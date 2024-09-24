// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;

contract ERC20 {
  mapping(address => uint256) private _balances;
  mapping(address => mapping(address => uint256)) private _allowances;
  uint256 private _totalSupply;
  string private _name;
  string private _symbol;

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);

  constructor(string memory name_, string memory symbol_) {
    _name = name_;
    _symbol = symbol_;
  }

  function _msgSender() internal view returns (address) {
    return msg.sender;
  }

  function name() public view returns (string memory) {
    return _name;
  }

  function symbol() public view returns (string memory) {
    return _symbol;
  }

  function decimals() public view returns (uint256) {
    return 18;
  }

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }

  function balanceOf(address account) public view returns (uint256) {
    return _balances[account];
  }

  function transfer(address recipient, uint256 amount) public returns (bool) {
    _transfer(_msgSender(), recipient, amount);
    return true;
  }

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowances[owner][spender];
  }

  function approve(address spender, uint256 amount) public returns (bool) {
    _approve(_msgSender(), spender, amount);
    return true;
  }

  function transferFrom(address sender, address recipient, uint256 amount)
      public returns (bool) {
    _transfer(sender, recipient, amount);

    uint256 currentAllowance = _allowances[sender][_msgSender()];
    unchecked {
      // TODO: checked:
      require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");

      _approve(sender, _msgSender(), currentAllowance - amount);
    }

    return true;
  }

  function increaseAllowance(address spender, uint256 addedValue) public
      returns (bool) {
    // TODO: checked
    unchecked {
    _approve(_msgSender(), spender, _allowances[_msgSender()][spender] + addedValue);
    }
    return true;
  }

  function decreaseAllowance(address spender, uint256 subtractedValue) public
      returns (bool) {
    uint256 currentAllowance = _allowances[_msgSender()][spender];
    unchecked {
      // TODO: checked:
      require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");

      _approve(_msgSender(), spender, currentAllowance - subtractedValue);
    }

    return true;
  }

  function _transfer(address sender, address recipient, uint256 amount) public {
    // TODO: checked:
    unchecked {
      require(sender != address(0), "ERC20: transfer from the zero address");
      require(recipient != address(0), "ERC20: transfer to the zero address");
    }

    uint256 senderBalance = _balances[sender];
    unchecked {
      // TODO: checked:
      require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");

      _balances[sender] = senderBalance - amount;
      _balances[recipient] += amount; // TODO: checked
    }
    emit Transfer(sender, recipient, amount);
  }

  function _mint(address account, uint256 amount) public {
    // TODO: checked
    unchecked {
      require(account != address(0), "ERC20: mint to the zero address");
      _totalSupply += amount;
      _balances[account] += amount;
    }
    emit Transfer(address(0), account, amount);
  }

  function _burn(address account, uint256 amount) public {
    // TODO: checked
    unchecked {
      require(account != address(0), "ERC20: burn from the zero address");
    }

    uint256 accountBalance = _balances[account];
    unchecked {
      // TODO: checked
      require(accountBalance >= amount, "ERC20: burn amount exceeds balance");

      _balances[account] = accountBalance - amount;
      _totalSupply -= amount; // TODO: checked
    }

    emit Transfer(account, address(0), amount);
  }

  function _approve(address owner, address spender, uint256 amount) public {
    // TODO: checked
    unchecked {
      require(owner != address(0), "ERC20: approve from the zero address");
      require(spender != address(0), "ERC20: approve to the zero address");
    }

    _allowances[owner][spender] = amount;
    emit Approval(owner, spender, amount);
  }
}
