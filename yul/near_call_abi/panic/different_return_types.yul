//! { "targets": [ "EraVM" ], "cases": [ {
//!     "name": "void_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "666"
//!     ]
//! }, {
//!     "name": "void_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! }, {
//!     "name": "primitive_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "1", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "666"
//!     ]
//! }, {
//!     "name": "primitive_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "1", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "tuple2_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "2", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "666"
//!     ]
//! }, {
//!     "name": "tuple2_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "2", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1", "2"
//!     ]
//! }, {
//!     "name": "tuple16_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "3", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "666"
//!     ]
//! }, {
//!     "name": "tuple16_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "3", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"
//!     ]
//! }, {
//!     "name": "tuple20_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "4", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "666"
//!     ]
//! }, {
//!     "name": "tuple20_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "4", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"
//!     ]
//! } ],
//! "enable_eravm_extensions": true
//! }

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }
    object "Test_deployed" {
        code {
            {
                let return_type := calldataload(0)

                let go_static := calldataload(32)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 32)
                    pop(staticcall(gas(), address(), 0, 32, 0, 32))
                    return(0, 32)
                }

                switch return_type
                case 0 {
                    ZKSYNC_NEAR_CALL_void(gas())
                    return (0, 0)
                }
                case 1 {
                    let result := ZKSYNC_NEAR_CALL_primitive(gas())
                    mstore(0, result)
                    return(0, 32)
                }
                case 2 {
                    let result1, result2 := ZKSYNC_NEAR_CALL_tuple2(gas())
                    mstore(0, result1)
                    mstore(32, result2)
                    return(0, 64)
                }
                case 3 {
                    let result1, result2, result3, result4, result5, result6, result7, result8,
                         result9, result10, result11, result12, result13, result14, result15, result16 := ZKSYNC_NEAR_CALL_tuple16(gas())
                    mstore(0, result1)
                    mstore(32, result2)
                    mstore(64, result3)
                    mstore(96, result4)
                    mstore(128, result5)
                    mstore(160, result6)
                    mstore(192, result7)
                    mstore(224, result8)
                    mstore(256, result9)
                    mstore(288, result10)
                    mstore(320, result11)
                    mstore(352, result12)
                    mstore(384, result13)
                    mstore(416, result14)
                    mstore(448, result15)
                    mstore(480, result16)
                    return(0, 512)
                }
                case 4 {
                    let result1, result2, result3, result4, result5, result6, result7, result8, result9, result10,
                        result11, result12, result13, result14, result15, result16, result17, result18, result19, result20 := ZKSYNC_NEAR_CALL_tuple20(gas())
                    mstore(0, result1)
                    mstore(32, result2)
                    mstore(64, result3)
                    mstore(96, result4)
                    mstore(128, result5)
                    mstore(160, result6)
                    mstore(192, result7)
                    mstore(224, result8)
                    mstore(256, result9)
                    mstore(288, result10)
                    mstore(320, result11)
                    mstore(352, result12)
                    mstore(384, result13)
                    mstore(416, result14)
                    mstore(448, result15)
                    mstore(480, result16)
                    mstore(512, result17)
                    mstore(544, result18)
                    mstore(576, result19)
                    mstore(608, result20)
                    return(0, 640)
                }
                default {
                    mstore(0, 66)
                    return(0, 32)
                }
            }

            function ZKSYNC_NEAR_CALL_void(abi_data) {
                sstore(0, 0)
            }

            function ZKSYNC_NEAR_CALL_primitive(abi_data) -> result {
                result := 1
                sstore(0, 0)
            }

            function ZKSYNC_NEAR_CALL_tuple2(abi_data) -> result1, result2 {
                sstore(0, 0)
                result1 := 1
                result2 := 2
            }

            function ZKSYNC_NEAR_CALL_tuple16(abi_data) ->
                result1, result2, result3, result4, result5, result6, result7, result8,
                result9, result10, result11, result12, result13, result14, result15, result16
            {
                result1 := 1
                result2 := 2
                result3 := 3
                result4 := 4
                result5 := 5
                result6 := 6
                result7 := 7
                result8 := 8
                result9 := 9
                result10 := 10
                result11 := 11
                result12 := 12
                result13 := 13
                result14 := 14
                result15 := 15
                result16 := 16
                sstore(0, 0)
            }

            function ZKSYNC_NEAR_CALL_tuple20(abi_data) ->
                result1, result2, result3, result4, result5, result6, result7, result8, result9, result10,
                result11, result12, result13, result14, result15, result16, result17, result18, result19, result20
            {
                sstore(0, 0)
                result1 := 1
                result2 := 2
                result3 := 3
                result4 := 4
                result5 := 5
                result6 := 6
                result7 := 7
                result8 := 8
                result9 := 9
                result10 := 10
                result11 := 11
                result12 := 12
                result13 := 13
                result14 := 14
                result15 := 15
                result16 := 16
                result17 := 17
                result18 := 18
                result19 := 19
                result20 := 20
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 666)
                return(0, 32)
            }
        }
    }
}
