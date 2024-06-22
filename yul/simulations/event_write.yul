//! { "targets": [ "EraVM" ], "cases": [],
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
                let result := call(
                    0xFFFF,
                    0xFFEC,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF
                )

                return(0, 0)
            }
        }
    }
}
