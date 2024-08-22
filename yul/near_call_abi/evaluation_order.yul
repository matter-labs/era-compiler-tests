//! { "targets": [ "eravm" ], "cases": [ {
//!     "name": "add",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x01"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "mul",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x02"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "sub",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x03"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "div",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x04"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "sdiv",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x05"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "mod",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x06"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "smod",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x07"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "addmod",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x08"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             }
//!         ]}
//!     }, {
//!     "name": "mulmod",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x09"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             }
//!         ]}
//!     }, {
//!     "name": "exp",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x0a"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "signextend",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x0b"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "lt",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x10"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "gt",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x11"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "slt",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x12"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "sgt",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x13"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "eq",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x14"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "and",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x16"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "or",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x17"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "xor",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x18"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "shl",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x1b"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "shr",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x1c"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "sar",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x1d"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "keccak256",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x20"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "calldatacopy",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x37"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             }
//!         ]}
//!     }, {
//!     "name": "returndatacopy",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x3e"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             }
//!         ]}
//!     }, {
//!     "name": "mstore",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x52"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "mstore8",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x53"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "sstore",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0x55"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "log0",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xa0"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": [],
//!                 "values": []
//!             }
//!         ]}
//!     }, {
//!     "name": "log1",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xa1"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02", "0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x00"]
//!             }
//!         ]}
//!     }, {
//!     "name": "log2",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xa2"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x01", "0x00"],
//!                 "values": ["0x00"]
//!             }
//!         ]}
//!     }, {
//!     "name": "log3",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xa3"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x04", "0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x02", "0x01", "0x00"],
//!                 "values": ["0x00"]
//!             }
//!         ]}
//!     }, {
//!     "name": "log4",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xa4"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x04"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x05"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x03", "0x02", "0x01", "0x00"],
//!                 "values": ["0x00"]
//!             }
//!         ]}
//!     }, {
//!     "name": "create",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xf0"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02", "0x00"],
//!                 "values": ["0x02"]
//!             }
//!         ]}
//!     }, {
//!     "name": "call",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xf1"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x04"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x05"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x06", "0x00"],
//!                 "values": ["0x02"]
//!             }
//!         ]}
//!     }, {
//!     "name": "return",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xf3"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "delegatecall",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xf4"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x04"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x05"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "create2",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xf5"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "staticcall",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xfa"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x04"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x05"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//! }, {
//!     "name": "near_call_abi",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xfb"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "customfunction",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xfe"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             }
//!         ]}
//!     }, {
//!     "name": "nestedCustomFunctions",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": ["0xff"]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "events": [
//!             {
//!                 "topics": ["0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x01"],
//!                 "values": ["0x01"]
//!             },
//!             {
//!                 "topics": ["0x02", "0x00"],
//!                 "values": ["0x02"]
//!             },
//!             {
//!                 "topics": ["0x03", "0x00"],
//!                 "values": ["0x01"]
//!             }
//!         ]
//!     }
//! } ], "enable_eravm_extensions": true }

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }

    object "Test_deployed" {
        code {
            {
                function lhs() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 1)
                    log1(0, 32, cnt)
                }
    
                function rhs() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 2)
                    log1(0, 32, cnt)
                }

                function lhs_2() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 1)
                    log2(0, 32, cnt, 0)
                }
    
                function rhs_2() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 2)
                    log2(0, 32, cnt, 0)
                }

                function customFunction(l, r) -> ret {
                    let x := sload(3)
                    sstore(3, add(x, l))

                    let y := sload(4)
                    sstore(4, add(y, r))

                    ret := add(x, y)
                }

                function ZKSYNC_NEAR_CALL_customFunction(abi_data, l, r) -> ret {
                    let x := sload(3)
                    sstore(3, add(x, l))

                    let y := sload(4)
                    sstore(4, add(y, r))

                    ret := add(x, y)
                }
                
                if gt(sload(0), 0) {
                    sstore(0, 0)
                }

                let opcode := calldataload(0)
                let ret
                switch opcode
                case 0x01 {
                    ret := add(lhs(), rhs())
                } 
                case 0x02 {
                    ret := mul(lhs(), rhs())
                }
                case 0x03 {
                    ret := sub(lhs(), rhs())
                }
                case 0x04 {
                    ret := div(lhs(), rhs())
                }
                case 0x05 {
                    ret := sdiv(lhs(), rhs())
                }
                case 0x06 {
                    ret := mod(lhs(), rhs())
                }
                case 0x07 {
                    ret := smod(lhs(), rhs())
                }
                case 0x08 {
                    ret := addmod(rhs(), lhs(), rhs())
                }
                case 0x09 {
                    ret := mulmod(rhs(), lhs(), rhs())
                }
                case 0x0a {
                    ret := exp(lhs(), rhs())
                }
                case 0x0b {
                    ret := signextend(lhs(), rhs())
                }
                case 0x10 {
                    ret := lt(lhs(), rhs())
                }
                case 0x11 {
                    ret := gt(lhs(), rhs())
                }
                case 0x12 {
                    ret := slt(lhs(), rhs())
                }
                case 0x13 {
                    ret := sgt(lhs(), rhs())
                }
                case 0x14 {
                    ret := eq(lhs(), rhs())
                }
                case 0x16 {
                    ret := and(lhs(), rhs())
                }
                case 0x17 {
                    ret := or(lhs(), rhs())
                }
                case 0x18 {
                    ret := xor(lhs(), rhs())
                }
                case 0x1b {
                    ret := shl(lhs(), rhs())
                }
                case 0x1c {
                    ret := shr(lhs(), rhs())
                }
                case 0x1d {
                    ret := sar(lhs(), rhs())
                }
                case 0x20 {
                    ret := keccak256(lhs(), rhs())
                }
                case 0x37 {
                    calldatacopy(rhs(), lhs(), rhs())
                }
                case 0x3e {
                    // Call the keccak256 precompiler to make returndatasize() > 0
                    pop(staticcall(gas(), 0x8010, 0, 0, 0, 32))
                    returndatacopy(rhs(), lhs(), rhs())
                }
                case 0x52 {
                    mstore(lhs(), rhs())
                }
                case 0x53 {
                    mstore8(lhs(), rhs())
                }
                case 0x55 {
                    sstore(lhs(), rhs())
                }
                case 0xa0 {
                    log0(lhs(), rhs())
                }
                case 0xa1 {
                    log1(rhs_2(), lhs(), rhs())
                }
                case 0xa2 {
                    log2(lhs(), rhs(), lhs(), rhs())
                }
                case 0xa3 {
                    log3(rhs_2(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xa4 {
                    log4(lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xf0 {
                    ret := create(rhs_2(), lhs(), rhs())
                }
                case 0xf1 {
                    ret := call(rhs_2(), lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xf3 {
                    return(lhs(), rhs())
                }
                case 0xf4 {
                    ret := delegatecall(lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xf5 {
                    ret := create2(lhs(), rhs(), lhs(), rhs())
                }
                case 0xfa {
                    ret := staticcall(lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xfb {
                    ret := ZKSYNC_NEAR_CALL_customFunction(0, lhs(), rhs())
                }
                case 0xfe {
                    ret := customFunction(lhs(), rhs())
                }
                case 0xff {
                    ret := customFunction(customFunction(lhs_2(), rhs_2()), customFunction(lhs(), rhs()))
                }
                default {
                    revert(0, 0)
                }

                // To prevent compiler optimisations
                sstore(1, ret)
                return(0, 0)
            }
        }
    }
}
