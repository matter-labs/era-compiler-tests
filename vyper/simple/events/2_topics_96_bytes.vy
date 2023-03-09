#! { "cases": [ {
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
#!                     "0x07392b89121f4d481601a3db92f2daf8c73cc086a942b4522c58abcbdeac4d01",
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

event Event:
    _: indexed(uint256)
    __: uint256
    ___: uint256
    ____: uint256

@external
def test():
    log Event(9876543211, 1234567890, 1234567891, 1234567892)
