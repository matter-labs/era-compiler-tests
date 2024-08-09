//! { "targets": [ "EraVM" ], "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "#deployer",
//!             "calldata": [],
//!             "expected": [
//!                 "Test.address"
//!             ]
//!         },
//!         {
//!             "method": "#fallback",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "2",
//!         "3"
//!     ]
//! } ] }

object "Test" {
    code {
        {
            setimmutable(0, "10000000000000000000000000", 1)
            setimmutable(0, "20000000000000000000000000", 2)
            setimmutable(0, "30000000000000000000000000", 3)

            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }

    object "Test_deployed" {
        code {
            {
                mstore(0, loadimmutable("10000000000000000000000000"))
                mstore(32, loadimmutable("20000000000000000000000000"))
                mstore(64, loadimmutable("30000000000000000000000000"))
                return(0, 96)
            }
        }
    }
}
