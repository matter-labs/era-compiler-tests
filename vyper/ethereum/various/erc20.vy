event Transfer:
    from_: indexed(address)
    to: indexed(address)
    value: uint256
 
event Approval:
    owner: indexed(address)
    spender: indexed(address)
    value: uint256

_balances: HashMap[address, uint256]
_allowances: HashMap[address, HashMap[address, uint256]]

_totalSupply: uint256

@internal
def _transfer(from_: address, to: address, value_: uint256):
    assert to != convert(0, address), "ERC20: transfer to the zero address"

    # The subtraction and addition here will revert on overflow.
    self._balances[from_] = self._balances[from_] - value_
    self._balances[to] = self._balances[to] + value_
    log Transfer(from_, to, value_)

@internal
def _mint(account: address, value_: uint256):
    assert account != convert(0, address), "ERC20: mint to the zero address"

    # The additions here will revert on overflow.
    self._totalSupply = self._totalSupply + value_
    self._balances[account] = self._balances[account] + value_
    log Transfer(convert(0, address), account, value_)

@internal
def _burn(account: address, value_: uint256):
    assert account != convert(0, address), "ERC20: burn from the zero address"

    # The subtractions here will revert on overflow.
    self._totalSupply = self._totalSupply - value_
    self._balances[account] = self._balances[account] - value_
    log Transfer(account, convert(0, address), value_)

@internal
def _approve(owner: address, spender: address, value_: uint256):
    assert owner != convert(0, address), "ERC20: approve from the zero address"
    assert spender != convert(0, address), "ERC20: approve to the zero address"

    self._allowances[owner][spender] = value_
    log Approval(owner, spender, value_)

@internal
def _burnFrom(account: address, value_: uint256):
    self._burn(account, value_)
    self._approve(account, msg.sender, self._allowances[account][msg.sender] - value_)

@deploy
def __init__():
    self._mint(msg.sender, 20)

@external
@view
def totalSupply() -> uint256:
    return self._totalSupply

@external
@view
def balanceOf(owner: address) -> uint256:
    return self._balances[owner]
    
@external
@view
def allowance(owner: address, spender: address) -> uint256:
    return self._allowances[owner][spender]
    
@external
def transfer(to: address, value_: uint256) -> bool:
    self._transfer(msg.sender, to, value_)
    return True

@external
def approve(spender: address, value_: uint256) -> bool:
    self._approve(msg.sender, spender, value_)
    return True

@external
def transferFrom(from_: address, to: address, value_: uint256) -> bool:
    self._transfer(from_, to, value_)
    # The subtraction here will revert on overflow.
    self._approve(from_, msg.sender, self._allowances[from_][msg.sender] - value_)
    return True
    
@external
def increaseAllowance(spender: address, addedvalue_: uint256) -> bool:
    # The addition here will revert on overflow.
    self._approve(msg.sender, spender, self._allowances[msg.sender][spender] + addedvalue_)
    return True

@external
def decreaseAllowance(spender: address, subtractedvalue_: uint256) -> bool:
    # The subtraction here will revert on overflow.
    self._approve(msg.sender, spender, self._allowances[msg.sender][spender] - subtractedvalue_)
    return True

# ====
# compileViaYul: also
# ----
# constructor()
# ~ emit Transfer(address,address,uint256): #0x00, #0x1212121212121212121212121212120000000012, 0x14
# gas irOptimized: 437697
# gas legacy: 833310
# gas legacyOptimized: 416135
# totalSupply() -> 20
# gas irOptimized: 23415
# gas legacy: 23524
# gas legacyOptimized: 23368
# transfer(address,uint256): 2, 5 -> true
# ~ emit Transfer(address,address,uint256): #0x1212121212121212121212121212120000000012, #0x02, 0x05
# gas irOptimized: 48471
# gas legacy: 49317
# gas legacyOptimized: 48491
# decreaseAllowance(address,uint256): 2, 0 -> true
# ~ emit Approval(address,address,uint256): #0x1212121212121212121212121212120000000012, #0x02, 0x00
# gas irOptimized: 26275
# gas legacy: 27012
# gas legacyOptimized: 26275
# decreaseAllowance(address,uint256): 2, 1 -> FAILURE
# gas irOptimized: 24042
# gas legacy: 24467
# gas legacyOptimized: 24056
# transfer(address,uint256): 2, 14 -> true
# ~ emit Transfer(address,address,uint256): #0x1212121212121212121212121212120000000012, #0x02, 0x0e
# gas irOptimized: 28571
# gas legacy: 29417
# gas legacyOptimized: 28591
# transfer(address,uint256): 2, 2 -> FAILURE
# gas irOptimized: 24071
# gas legacy: 24453
# gas legacyOptimized: 24053
