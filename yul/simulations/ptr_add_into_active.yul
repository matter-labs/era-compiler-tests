//! { "cases": [],
//! "system_mode": true
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
                let result := staticcall(
                    0xFFFF,
                    0xFFE9,
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
