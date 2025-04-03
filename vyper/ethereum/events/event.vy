event Deposit:
    _from: indexed(address)
    _id: indexed(bytes32)
    _value: uint256

@external
@payable
def deposit(_id: bytes32, _manually: bool):
    if _manually:
        value: uint256 = msg.value
        sender: address = msg.sender
        log Deposit(_from=sender, _id=_id, _value=value)
    else:
        log Deposit(_from=msg.sender, _id=_id, _value=msg.value)

# ----
# deposit(bytes32,bool), 18 wei: 0x1234, true ->
# ~ emit Deposit(address,bytes32,uint256): #0x1212121212121212121212121212120000000012, #0x1234, 0x12
# deposit(bytes32,bool), 18 wei: 0x1234, false ->
# ~ emit Deposit(address,bytes32,uint256): #0x1212121212121212121212121212120000000012, #0x1234, 0x12
