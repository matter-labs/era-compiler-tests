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
#!                     "0x5a4642fb8bac0b060e83a5f84f05a5d9a11a1e92c1143328ed4a6685ecd52c60",
#!                     "9876543211",
#!                     "9876543212"
#!                 ],
#!                 "values": [
#!                     "1234567890"
#!                 ]
#!             }
#!         ]
#!     }
#! } ] }

event Event:
    _: indexed(uint256)
    __: indexed(uint256)
    ___: uint256

@external
def test():
    log Event(9876543211, 9876543212, 1234567890)
