#! { "modes": [ "V >=0.4.1" ], "cases": [ {
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
#!                     "0xb0f98cf6a3ac72f8ce21b36c00f0c5bc98b2acbda7853638c61ce3199b220011",
#!                     "9876543211"
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
    _: indexed(uint256)
    __: uint256
    ___: uint256
    ____: uint256

@external
def test():
    log MyEvent(_=9876543211, __=1234567890, ___=1234567891, ____=1234567892)
