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
#!                     "0x57050ab73f6b9ebdd9f76b8d4997793f48cf956e965ee070551b9ca0bb71584e"
#!                 ],
#!                 "values": []
#!             }
#!         ]
#!     }
#! } ] }

event Event:
    pass
    
@external
def test():
    log Event()
