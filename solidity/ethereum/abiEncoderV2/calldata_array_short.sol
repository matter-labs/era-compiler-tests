pragma abicoder v2;

contract C {
	function f(uint[] calldata) public {}
}
// ====
// revertStrings: debug
// ----
// f(uint256[]): 0x20, 0 ->
// f(uint256[]): 0x20, 1 -> FAILURE
// f(uint256[]): 0x20, 2 -> FAILURE
