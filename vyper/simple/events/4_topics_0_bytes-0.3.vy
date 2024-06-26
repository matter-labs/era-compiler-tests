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
#!                     "0x3e238cd42ac2d6f8cb4448b4a931fd3bbd6f1088c845eec9c9daef375f6c908c",
#!                     "9876543211",
#!                     "9876543212",
#!                     "9876543213"
#!                 ],
#!                 "values": []
#!             }
#!         ]
#!     }
#! } ] }

event MyEvent:
    _: indexed(uint256)
    __: indexed(uint256)
    ___: indexed(uint256)

@external
def test():
    log MyEvent(9876543211, 9876543212, 9876543213)
