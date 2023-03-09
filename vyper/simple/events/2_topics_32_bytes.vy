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
#!                     "0x34e802e5ebd1f132e05852c5064046c1b535831ec52f1c4997fc6fdc4d5345b3",
#!                     "9876543211"
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
    __: uint256

@external
def test():
    log Event(9876543211, 1234567890)
