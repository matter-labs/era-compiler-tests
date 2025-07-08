event Deposit:
    _from: address
    _id: bytes32
    _value: uint256
    _flag: bool

@external
@payable
def deposit(_id: bytes32):
    log Deposit(msg.sender, _id, msg.value, True)

# ----
# deposit(bytes32), 18 wei: 0x1234 ->
# ~ emit Deposit(address,bytes32,uint256,bool): 0x1212121212121212121212121212120000000012, 0x1234, 0x12, true
