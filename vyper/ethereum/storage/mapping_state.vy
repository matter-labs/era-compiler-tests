canVote: HashMap[address, bool]
voteCount: HashMap[address, uint256]
voted: HashMap[address, bool]

@external
def getVoteCount(addr: address) -> uint256:
    return self.voteCount[addr]
    
@external
def grantVoteRight(addr: address):
    self.canVote[addr] = True
    
@external
def vote(voter: address, vote: address) -> bool:
    if not self.canVote[voter] or self.voted[voter]:
        return False
    self.voted[voter] = True
    self.voteCount[vote] = self.voteCount[vote] + 1
    return True
    
# ====
# compileViaYul: also
# ----
# getVoteCount(address): 0 -> 0
# getVoteCount(address): 1 -> 0
# getVoteCount(address): 2 -> 0
# vote(address,address): 0, 2 -> false
# getVoteCount(address): 0 -> 0
# getVoteCount(address): 1 -> 0
# getVoteCount(address): 2 -> 0
# grantVoteRight(address): 0 ->
# grantVoteRight(address): 1 ->
# vote(address,address): 0, 2 -> true
# getVoteCount(address): 0 -> 0
# getVoteCount(address): 1 -> 0
# getVoteCount(address): 2 -> 1
# vote(address,address): 0, 1 -> false
# getVoteCount(address): 0 -> 0
# getVoteCount(address): 1 -> 0
# getVoteCount(address): 2 -> 1
# vote(address,address): 2, 1 -> false
# getVoteCount(address): 0 -> 0
# getVoteCount(address): 1 -> 0
# getVoteCount(address): 2 -> 1
# grantVoteRight(address): 2 ->
# vote(address,address): 2, 1 -> true
# getVoteCount(address): 0 -> 0
# getVoteCount(address): 1 -> 1
# getVoteCount(address): 2 -> 1
