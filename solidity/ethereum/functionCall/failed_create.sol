contract D { constructor() payable {} }
contract C {
	uint public x;
	constructor() payable {}
	function f(uint amount) public returns (D) {
		x++;
		return (new D){value: amount}();
	}
	function stack(uint depth) public payable returns (address) {
		if (depth > 0)
			return this.stack(depth - 1);
		else
			return address(f(0));
	}
}
// ====
// EVMVersion: >=byzantium
// ----
// constructor(), 20 wei
// gas irOptimized: 61548
// gas irOptimized code: 104600
// gas legacy: 70147
// gas legacy code: 215400
// gas legacyOptimized: 61715
// gas legacyOptimized code: 106800
// f(uint256): 20 -> 0x5a0187777208a69e9b7337d8726071de2a548168
// x() -> 1
// f(uint256): 20 -> FAILURE
// x() -> 1
// stack(uint256): 1023 -> FAILURE
// gas irOptimized: 252410
// gas legacy: 476845
// gas legacyOptimized: 299061
// x() -> 1
// stack(uint256): 10 -> 0x305e3aea70a4d408cddb066f38aa5ceaec234c97
// x() -> 2
