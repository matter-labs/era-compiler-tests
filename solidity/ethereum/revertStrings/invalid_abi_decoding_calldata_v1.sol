pragma abicoder v1;
contract C {
	function d(bytes memory _data) public pure returns (uint8) {
		return abi.decode(_data, (uint8));
	}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ABIEncoderV1Only: true
// compileViaYul: false
// ----
// d(bytes): 0x20, 0x20, 0x0000000000000000000000000000000000000000000000000000000000000000 -> 0
// d(bytes): 0x100, 0x20, 0x0000000000000000000000000000000000000000000000000000000000000000 -> FAILURE
// d(bytes): 0x20, 0x100, 0x0000000000000000000000000000000000000000000000000000000000000000 -> FAILURE
