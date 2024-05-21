// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Main {
    constructor() public {
        assembly {
            let result := extcodehash(address())
            let _case
            switch result
                case 0 { _case := 0 }
                case 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 { _case := 2 }
                default { _case := 1 }
            mstore(0, _case)
            log0(0, 32)
        }
    }

    function main(uint256 _address) external view {
        assembly {
            let result := extcodehash(_address)
            let _case
            switch result
                case 0 { _case := 0 }
                case 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 { _case := 2 }
                default { _case := 1 }
            mstore(0, _case)
            return(0, 32)
        }
    }

    function dirty_address_test(address _address) external view {
        uint256 dirty_address = uint256(uint160(_address)) | (0xff001122deadbeef9944eeaa << 160);
        assembly {
            let result := extcodehash(dirty_address)
            let _case
            switch result
                case 0 { _case := 0 }
                case 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 { _case := 2 }
                default { _case := 1 }
            mstore(0, _case)
            return(0, 32)
        }
    }
}
