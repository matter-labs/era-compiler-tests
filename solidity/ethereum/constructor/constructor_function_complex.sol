contract D {
    uint public x;
    constructor(function() external pure returns (uint) g) {
        x = g();
    }
}

contract C {
    function f() public returns (uint r) {
        D d = new D(this.sixteen);
        r = d.x();
    }

    function sixteen() public pure returns (uint) {
        return 16;
    }
}
// ====
// bytecodeFormat: legacy,>=EOFv1
// ----
// f() -> 16
// gas legacy: 78477
// gas legacy code: 23600
