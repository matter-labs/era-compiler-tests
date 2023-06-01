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
#!                     "0x6c2b4666ba8da5a95717621d879a77de725f3d816709b9cbe9f059b8f875e284",
#!                     "9876543211"
#!                 ],
#!                 "values": []
#!             }
#!         ]
#!     }
#! } ] }

event MyEvent:
    _: indexed(uint256)

@external
def test():
    log MyEvent(9876543211)
