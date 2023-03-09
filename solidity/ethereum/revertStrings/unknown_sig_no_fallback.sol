contract A {
	receive () external payable {}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// (): hex"00" -> FAILURE
