#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "get",
#!     "inputs": [
#!         {
#!             "method": "greet",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x20",
#!         "12",
#!         "0x48656c6c6f20576f726c64210000000000000000000000000000000000000000"
#!     ]
#! } ] }

greet: public(String[12])

@external
def __init__():
    self.greet = "Hello World!"
