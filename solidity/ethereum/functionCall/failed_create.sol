contract D { constructor() payable {} }
contract C {
	uint public x;
	constructor() payable {}
	function f(uint amount) public {
		x++;
		(new D){value: amount, salt: bytes32(x)}();
	}
	function stack(uint depth) public payable {
		if (depth > 0)
			this.stack(depth - 1);
		else
			f(0);
	}
}
// ====
// EVMVersion: >=constantinople
// ----
// constructor(), 20 wei
// gas irOptimized: 59688
// gas irOptimized code: 81800
// gas legacy: 64468
// gas legacy code: 145400
// gas legacyOptimized: 60443
// gas legacyOptimized code: 91200
// f(uint256): 20 ->
// x() -> 1
// f(uint256): 20 -> FAILURE
// x() -> 1
// stack(uint256): 1023 -> FAILURE
// gas irOptimized: 298110
// gas legacy: 527207
// gas legacyOptimized: 353607
// x() -> 1
// stack(uint256): 10 ->
// x() -> 2
