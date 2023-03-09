pragma abicoder v2;
type MyAddress is address;

contract C {
    MyAddress[] public addresses;
    function f(MyAddress[] calldata _addresses) external {
        for (uint i = 0; i < _addresses.length; i++) {
            MyAddress.unwrap(_addresses[i]).call("");
        }
        addresses = _addresses;
    }
    function g(MyAddress[] memory _addresses) external {
        for (uint i = 0; i < _addresses.length; i++) {
            MyAddress.unwrap(_addresses[i]).call("");
        }
        addresses = _addresses;
    }
    function test_f() external returns (bool) {
        clean();
        MyAddress[] memory test = new MyAddress[](3);
        test[0] = MyAddress.wrap(address(0xFFFFFF21));
        test[1] = MyAddress.wrap(address(0xFFFFFF22));
        test[2] = MyAddress.wrap(address(0xFFFFFF23));
        this.f(test);
        test_equality(test);
        return true;
    }
    function test_g() external returns (bool) {
        clean();
        MyAddress[] memory test = new MyAddress[](5);
        test[0] = MyAddress.wrap(address(0xFFFFFF24));
        test[1] = MyAddress.wrap(address(0xFFFFFF25));
        test[2] = MyAddress.wrap(address(0xFFFFFF26));
        test[3] = MyAddress.wrap(address(0xFFFFFF27));
        test[4] = MyAddress.wrap(address(0xFFFFFF28));
        this.g(test);
        test_equality(test);
        return true;
    }
    function clean() internal {
        delete addresses;
    }
    function test_equality(MyAddress[] memory _addresses) internal view {
        require (_addresses.length == addresses.length);
        for (uint i = 0; i < _addresses.length; i++) {
            require(MyAddress.unwrap(_addresses[i]) == MyAddress.unwrap(addresses[i]));
        }
    }
}
// ----
// test_f() -> true
// gas irOptimized: 122510
// gas legacy: 126150
// gas legacyOptimized: 123163
// test_g() -> true
// gas irOptimized: 106903
// gas legacy: 112481
// gas legacyOptimized: 107706
// addresses(uint256): 0 -> 0xFFFFFF24
// addresses(uint256): 1 -> 0xFFFFFF25
// addresses(uint256): 3 -> 0xFFFFFF27
// addresses(uint256): 4 -> 0xFFFFFF28
// addresses(uint256): 5 -> FAILURE
