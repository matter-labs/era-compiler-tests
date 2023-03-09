contract C {
	function f(uint256 start, uint256 end, uint256[] calldata arr) external pure {
		arr[start:end];
	}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// f(uint256,uint256,uint256[]): 2, 1, 0x80, 3, 1, 2, 3 -> FAILURE
// f(uint256,uint256,uint256[]): 1, 5, 0x80, 3, 1, 2, 3 -> FAILURE
