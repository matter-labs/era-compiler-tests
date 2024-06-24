# @title Voting with delegation.

# This declares a new complex type which will
# be used for variables later.
# It will represent a single voter.
struct Voter:
    weight: uint256 # weight is accumulated by delegation
    voted: bool     # if true, that person already voted
    delegate: address # person delegated to
    vote: uint256   # index of the voted proposal

# This is a type for a single proposal.
struct Proposal:
    name: bytes32      # short name (up to 32 bytes)
    voteCount: uint256 # number of accumulated votes

chairperson: public(address)

# This declares a state variable that
# stores a `Voter` struct for each possible address.
voters: public(HashMap[address, Voter])

# An array of `Proposal` structs.
proposals: public(Proposal[10])
proposals_length: uint256

# Create a new ballot to choose one of `proposalNames`.
@external
def __init__(length: uint256, proposalNames: bytes32[10]):
    self.chairperson = msg.sender
    self.voters[self.chairperson].weight = 1

    # For each of the provided proposal names,
    # create a new proposal object and add it
    # to the end of the array.
    for i in range(10):
        if not i < length:
            break
        # `Proposal({...})` creates a temporary
        # Proposal object
        self.proposals[self.proposals_length] = Proposal({name: proposalNames[i], voteCount: 0})
        self.proposals_length += 1

# Give `voter` the right to vote on this ballot.
# May only be called by `chairperson`.
@external
def giveRightToVote(voter: address):
    # If the first argument of `require` evaluates
    # to `false`, execution terminates and all
    # changes to the state and to Ether balances
    # are reverted.
    # This used to consume all gas in old EVM versions, but
    # not anymore.
    # It is often a good idea to use `require` to check if
    # functions are called correctly.
    # As a second argument, you can also provide an
    # explanation about what went wrong.
    assert msg.sender == self.chairperson, "Only chairperson can give right to vote."
    assert not self.voters[voter].voted, "The voter already voted."
    assert self.voters[voter].weight == 0
    self.voters[voter].weight = 1

# Delegate your vote to the voter `to`.
@external
def delegate(_to: address):
    to: address = _to
    assert not self.voters[msg.sender].voted, "You already voted."

    assert to != msg.sender, "Self-delegation is disallowed."

    # Forward the delegation as long as
    # `to` also delegated.
    # In general, such loops are very dangerous,
    # because if they run too long, they might
    # need more gas than is available in a block.
    # In this case, the delegation will not be executed,
    # but in other situations, such loops might
    # cause a contract to get "stuck" completely.
    for _ in range(1000000000):
        if not self.voters[to].delegate != convert(0, address):
            break
        to = self.voters[to].delegate

        # We found a loop in the delegation, not allowed.
        assert to != msg.sender, "Found loop in delegation."

    self.voters[msg.sender].voted = True
    self.voters[msg.sender].delegate = to

    if self.voters[to].voted:
        # If the delegate already voted,
        # directly add to the number of votes
        self.proposals[self.voters[to].vote].voteCount += self.voters[msg.sender].weight
    else:
        # If the delegate did not vote yet,
        # add to her weight.
        self.voters[to].weight += self.voters[msg.sender].weight

# Give your vote (including votes delegated to you)
# to proposal `proposals[proposal].name`.
@external
def vote(proposal: uint256):
    assert self.voters[msg.sender].weight != 0, "Has no right to vote"
    assert not self.voters[msg.sender].voted, "Already voted."
    self.voters[msg.sender].voted = True
    self.voters[msg.sender].vote = proposal

    # If `proposal` is out of the range of the array,
    # this will throw automatically and revert all
    # changes.
    self.proposals[proposal].voteCount += self.voters[msg.sender].weight

# @dev Computes the winning proposal taking all
# previous votes into account.
@internal
@view
def winningProposalInternal() -> uint256:
    winningProposal_: uint256 = 0
    winningVoteCount: uint256 = 0
    for p in range(10):
        if not p < self.proposals_length:
            break
        if self.proposals[p].voteCount > winningVoteCount:
            winningVoteCount = self.proposals[p].voteCount
            winningProposal_ = p
    return winningProposal_

@external
@view
def winningProposal() -> uint256:
    return self.winningProposalInternal()

# Calls winningProposal() function to get the index
# of the winner contained in the proposals array and then
# returns the name of the winner
@external
@view
def winnerName() -> bytes32:
    return self.proposals[self.winningProposalInternal()].name
