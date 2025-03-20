contract A1 {}
contract B1 is A1 { constructor() payable {} }

contract A2 { constructor() {} }
contract B2 is A2 { constructor() payable {} }

contract B3 { constructor() payable {} }

contract C {
	function f() public payable returns (bool) {
		// Make sure none of these revert.
		new B1{value: 10, salt: hex"00"}();
		new B2{value: 10, salt: hex"01"}();
		new B3{value: 10, salt: hex"02"}();
		return true;
	}
}
// ====
// EVMVersion: >=constantinople
// ----
// f(), 2000 ether -> true
// gas irOptimized: 117688
// gas irOptimized code: 1800
// gas legacy: 117889
// gas legacy code: 4800
// gas legacyOptimized: 117761
// gas legacyOptimized code: 4800
