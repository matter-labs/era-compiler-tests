contract c {
    struct Data { uint x; uint y; }
    Data[] data1;
    Data[] data2;
    function test() public returns (uint x, uint y) {
        while (data1.length < 9)
            data1.push();
        data1[8].x = 4;
        data1[8].y = 5;
        data2 = data1;
        x = data2[8].x;
        y = data2[8].y;
        while (data1.length > 0)
            data1.pop();
        data2 = data1;
    }
}
// ----
// test() -> 4, 5
// gas irOptimized: 190628
// gas legacy: 190828
// gas legacyOptimized: 189657
// storageEmpty -> 1
