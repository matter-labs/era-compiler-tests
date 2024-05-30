error CustomError(string);

contract C
{
    function f() external pure
    {
        string memory reason = "errorReason";
        require(false, CustomError(reason));
    }

    function g() external pure
    {
        string memory reason = "anotherReason";
        require(false, CustomError(reason));
    }
}

// ====
// compileViaYul: true
// ----
// f() -> FAILURE, hex"8d6ea8be", hex"0000000000000000000000000000000000000000000000000000000000000020", hex"000000000000000000000000000000000000000000000000000000000000000b", hex"6572726f72526561736f6e000000000000000000000000000000000000000000"
// g() -> FAILURE, hex"8d6ea8be", hex"0000000000000000000000000000000000000000000000000000000000000020", hex"000000000000000000000000000000000000000000000000000000000000000d", hex"616e6f74686572526561736f6e00000000000000000000000000000000000000"
