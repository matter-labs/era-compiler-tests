contract C {
    bytes32 public genesisHash;
    bytes32 public currentHash;
    constructor() {
        require(block.number == 300);
        genesisHash = blockhash(0);
        currentHash = blockhash(300);
    }
    function f(uint blockNumber) public returns (bytes32) {
        return blockhash(blockNumber);
    }
}
// ----
// constructor()
// gas irOptimized: 108150
// gas legacy: 152179
// gas legacyOptimized: 106750
// genesisHash() -> 0
// currentHash() -> 0
// f(uint256): 0 -> 0
// f(uint256): 1 -> 0
// f(uint256): 255 -> 0x3737373737373737373737373737373737373737373737373737373737373836
// f(uint256): 256 -> 0x3737373737373737373737373737373737373737373737373737373737373837
// f(uint256): 257 -> 0x3737373737373737373737373737373737373737373737373737373737373838
// f(uint256): 300 -> 0x00
// f(uint256): 301 -> 0x00
// f(uint256): 302 -> 0x00
