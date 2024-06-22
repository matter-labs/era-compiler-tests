//! { "targets": [ "EraVM" ], "cases": [ {
//!     "name": "5_args_void_failure",
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
//!     "name": "5_args_void_success",
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
//!     "name": "16_args_tuple20_failure",
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
//!     "name": "16_args_tuple20_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "1", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "200", "100", "20", "10", "2", "1", "10", "9", "8", "7", "6", "5", "4", "3", "2", "1", "17", "18", "19", "20"
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
                let type := calldataload(0)

                let go_static := calldataload(32)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 32)
                    pop(staticcall(gas(), address(), 0, 32, 0, 32))
                    return(0, 32)
                }

                switch type
                case 0 {
                    ZKSYNC_NEAR_CALL_5_args_void(gas(), 13, 2, 1, 255, 11)
                    return(0, 0)
                }
                case 1 {
                    let result1, result2, result3, result4, result5, result6, result7, result8, result9, result10,
                        result11, result12, result13, result14, result15, result16, result17, result18, result19, result20 := ZKSYNC_NEAR_CALL_16_args_tuple20(gas(), 200, 100, 20, 10, 2, 1, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
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

                mstore(0, 66)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_5_args_void(abi_data, arg1, arg2, arg3, arg4, arg5) {
                sstore(0, 0)
            }

            function ZKSYNC_NEAR_CALL_16_args_tuple20(abi_data, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16) ->
                result1, result2, result3, result4, result5, result6, result7, result8, result9, result10,
                result11, result12, result13, result14, result15, result16, result17, result18, result19, result20
            {
                sstore(0, 0)
                result1 := arg1
                result2 := arg2
                result3 := arg3
                result4 := arg4
                result5 := arg5
                result6 := arg6
                result7 := arg7
                result8 := arg8
                result9 := arg9
                result10 := arg10
                result11 := arg11
                result12 := arg12
                result13 := arg13
                result14 := arg14
                result15 := arg15
                result16 := arg16
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
