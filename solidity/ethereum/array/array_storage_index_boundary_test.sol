contract C {
    uint[] storageArray;
    function test_boundary_check(uint256 len, uint256 access) public returns (uint256)
    {
        while(storageArray.length < len)
            storageArray.push();
        while(storageArray.length > len)
            storageArray.pop();
        return storageArray[access];
    }
}
// ----
// test_boundary_check(uint256,uint256): 10, 11 -> FAILURE, hex"4e487b71", 0x32
// test_boundary_check(uint256,uint256): 10, 9 -> 0
// test_boundary_check(uint256,uint256): 1, 9 -> FAILURE, hex"4e487b71", 0x32
// test_boundary_check(uint256,uint256): 1, 1 -> FAILURE, hex"4e487b71", 0x32
// test_boundary_check(uint256,uint256): 10, 10 -> FAILURE, hex"4e487b71", 0x32
// test_boundary_check(uint256,uint256): 256, 256 -> FAILURE, hex"4e487b71", 0x32
// gas irOptimized: 147246
// gas legacy: 133632
// gas legacyOptimized: 114353
// test_boundary_check(uint256,uint256): 256, 255 -> 0
// gas irOptimized: 149422
// gas legacy: 135948
// gas legacyOptimized: 116532
// test_boundary_check(uint256,uint256): 256, 0xFFFF -> FAILURE, hex"4e487b71", 0x32
// test_boundary_check(uint256,uint256): 256, 2 -> 0
