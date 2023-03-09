contract A {
	receive() external payable {
		revert("no_receive");
	}
}

contract C {
	A a = new A();
	receive() external payable {}
	function f() public {
		address addr = payable(a);
		assembly {
			let success := call(gas(), addr, 1, 0, 0, 0, 0)
			if eq(success, 0) {
				returndatacopy(0, 0, returndatasize())
				revert(0, returndatasize())
			}
		}
	}
	function h() public {
		address addr = payable(a);
		assembly {
			let success := call(gas(), addr, 100000000000000000000, 0, 0, 0, 0)
			if eq(success, 0) {
				returndatacopy(0, 0, returndatasize())
				revert(0, returndatasize())
			}
		}
	}
	function g() public view returns (uint) {
		return payable(this).balance;
	}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// (), 10 wei ->
// g() -> 10
// f() -> FAILURE, hex"08c379a0", 0x20, 10, "no_receive"
// h() -> FAILURE
