#! { "modes": [ "V >=0.4.0" ], "cases": [ {
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
#!                     "0x4dbfb68b43dddfa12b51ebe99ab8fded620f9a0ac23142879a4f192a1b7952d2"
#!                 ],
#!                 "values": []
#!             }
#!         ]
#!     }
#! } ] }

event MyEvent:
    pass
    
@external
def test():
    log MyEvent()
