event Deposit:
    _from: indexed(address)
    _id: indexed(bytes32)
    _value: uint256

@external
@payable
def deposit(_id: bytes32):
    log Deposit(_from=msg.sender, _id=_id, _value=msg.value)

# ----
# deposit(bytes32), 18 wei: 0x1234 ->
# ~ emit Deposit(address,bytes32,uint256): #0x1212121212121212121212121212120000000012, #0x1234, 0x12
