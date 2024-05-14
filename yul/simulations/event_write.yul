//! { "cases": [],
//! "enable_eravm_extensions": true
//! }

object "Test_16" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_16_deployed" {
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
