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
#!                     "0xfbe558c1347c0a65fd2a338109db18d9e7b335e6412a7d01249e93f7d48e1509",
#!                     "9876543211",
#!                     "9876543212",
#!                     "9876543213"
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
    __: indexed(uint256)
    ___: indexed(uint256)
    ____: uint256
    _____: uint256
    ______: uint256

@external
def test():
    log MyEvent(9876543211, 9876543212, 9876543213, 1234567890, 1234567891, 1234567892)
