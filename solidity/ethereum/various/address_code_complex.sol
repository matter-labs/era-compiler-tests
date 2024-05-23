contract A {}

contract C {
    function f() public returns (bool) {
        bytes memory code = address(new A()).code;
        uint lastWord;
        assembly {
            lastWord := mload(code)
        }
        return lastWord != 0;
    }
    function g() public returns (bool) { return address(new A()).code.length > 0; }
}
// ----
// f() -> true
// g() -> true
