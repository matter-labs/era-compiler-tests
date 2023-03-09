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
#!                     "0x510e730eb6600b4c67d51768c6996795863364461fee983d92d5e461f209c7cf",
#!                     "9876543211"
#!                 ],
#!                 "values": []
#!             }
#!         ]
#!     }
#! } ] }

event Event:
    _: indexed(uint256)

@external
def test():
    log Event(9876543211)
