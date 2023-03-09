contract Other {
    constructor() payable {
    }
    function getAddress() public returns (address) {
        return address(this);
    }
}
contract ClientReceipt {
    Other other;
    constructor() payable {
        other = new Other{value:500}();
    }
    function getAddress() public returns (address) {
        return other.getAddress();
    }
}
// ----
// constructor(), 2000 wei ->
// gas irOptimized: 173106
// gas legacy: 235195
// gas legacyOptimized: 176766
// balance -> 1500
// gas irOptimized: 191881
// gas legacy: 235167
// gas legacyOptimized: 180756
// getAddress() -> 0x5a0187777208a69e9b7337d8726071de2a548168
// balance: 0x5a0187777208a69e9b7337d8726071de2a548168 -> 500
