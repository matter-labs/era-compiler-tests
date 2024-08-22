//! { "targets": [ "eravm" ], "cases": [],
//! "system_mode": true
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
                let result := staticcall(
                    0xFFFF,
                    0xFFDD,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF
                )
                pop(staticcall(
                    0xFFFF,
                    0xFFDC,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF,
                    0xFFFF
                ))

                return(0, 0)
            }
        }
    }
}
