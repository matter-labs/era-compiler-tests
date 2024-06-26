// Sending zero ether to a contract should still invoke the receive ether function
// (it previously did not because the gas stipend was not provided by the EVM)
contract Receiver {
    receive() external payable {}
}


contract Main {
    constructor() payable {}

    function s() public returns (bool) {
        Receiver r = new Receiver();
        (bool success,) = payable(r).call{value: 0}("");
        return success;
    }
}
// ----
// constructor(), 20 wei ->
// gas irOptimized: 100264
// gas legacy: 57555
// gas legacy code: 53000
// gas legacyOptimized: 100361
// s() -> true
