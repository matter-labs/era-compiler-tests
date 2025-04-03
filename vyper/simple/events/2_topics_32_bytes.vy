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
#!                     "0x06208c2a7c81ce0338f4e7c431f49476c450bad6ce52ef2b4e186db4a1fbcaf4",
#!                     "9876543211"
#!                 ],
#!                 "values": [
#!                     "1234567890"
#!                 ]
#!             }
#!         ]
#!     }
#! } ] }

event MyEvent:
    _: indexed(uint256)
    __: uint256

@external
def test():
    log MyEvent(_=9876543211, __=1234567890)
