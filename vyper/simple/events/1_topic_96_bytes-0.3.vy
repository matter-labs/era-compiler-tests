#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!         ],
#!         "events": [
#!             {
#!                 "topics": [
#!                     "0x3e238cd42ac2d6f8cb4448b4a931fd3bbd6f1088c845eec9c9daef375f6c908c"
#!                 ],
#!                 "values": [
#!                     "1234567890",
#!                     "1234567891",
#!                     "1234567892"
#!                 ]
#!             }
#!         ]
#!     }
#! } ] }

event MyEvent:
    _: uint256
    __: uint256
    ___: uint256

@external
def test():
    log MyEvent(1234567890, 1234567891, 1234567892)
