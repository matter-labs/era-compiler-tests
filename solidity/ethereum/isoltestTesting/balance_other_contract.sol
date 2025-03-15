contract C {
    constructor() payable {
        payable(address(0x12341234)).call{gas: gasleft(), value: 500}("");
    }
}
// ----
// constructor(), 2000 wei ->
// balance -> 1500
// balance: 0x0000000000000000000000000000000012341234 -> 500
