event Deposit:
    _from: indexed(address)
    _id: indexed(bytes32)
    _value: uint256

@external
@payable
def deposit(_id: bytes32):
    log Deposit(msg.sender, _id, msg.value)
