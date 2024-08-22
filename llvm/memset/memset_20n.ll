;! { "targets": [ "eravm" ], "cases": [ {
;!     "name": "0",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "0",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "1",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "1",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "2",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "2",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E000000000000000000000000000000000000000009080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "3",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "3",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1DDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "4",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "4",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "5",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "5",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B000000000000000000000000000000000000000006050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "6",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "6",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1ADEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "7",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "7",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "8",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "8",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A1918000000000000000000000000000000000000000003020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "9",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "9",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "10",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "10",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19181716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "11",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "11",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A1918171615000000000000000000000000000000000000000000",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "12",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "12",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "13",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "13",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19181716151413FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFF3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "14",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "14",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A1918171615141312000000000000000000000000000000000000",
;!                "0x00003D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "15",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "15",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211DEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!                "0xADBEEF3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "16",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "16",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19181716151413121110FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFF3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "17",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "17",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F000000000000000000000000000000",
;!                "0x00000000003A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "18",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "18",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0EDEADBEEFDEADBEEFDEADBEEFDEAD",
;!                "0xBEEFDEADBEEF393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "19",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "19",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0DFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFF3837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "20",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "20",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C000000000000000000000000",
;!                "0x000000000000000037363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "21",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "21",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0BDEADBEEFDEADBEEFDEADBE",
;!                "0xEFDEADBEEFDEADBEEF363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "22",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "22",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0AFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFF3534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "23",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "23",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09000000000000000000",
;!                "0x000000000000000000000034333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "24",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "24",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908DEADBEEFDEADBEEF",
;!                "0xDEADBEEFDEADBEEFDEADBEEF333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "25",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "25",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807FFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFF3231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "26",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "26",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706000000000000",
;!                "0x000000000000000000000000000031302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "27",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "27",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605DEADBEEFDE",
;!                "0xADBEEFDEADBEEFDEADBEEFDEADBEEF302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "28",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "28",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504FFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "29",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "29",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403000000",
;!                "0x00000000000000000000000000000000002E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "30",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "30",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302DEAD",
;!                "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "31",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "31",
;!                "20"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201FF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "E-p:256:256-i256:256:256-S32-a:256:256"
target triple = "eravm"

@calldatasize = private unnamed_addr global i256 0
@ptr_calldata = private unnamed_addr global i8 addrspace(3)* null

declare i32 @__personality()

; Function Attrs: noreturn nounwind
define i256 @__entry(i8 addrspace(3)* %0, i1 %1) local_unnamed_addr #0 personality i32 ()* @__personality {
entry:
  store i8 addrspace(3)* %0, i8 addrspace(3)** @ptr_calldata, align 32
  %abi_pointer_value = ptrtoint i8 addrspace(3)* %0 to i256
  %abi_pointer_value_shifted = lshr i256 %abi_pointer_value, 96
  %abi_length_value = and i256 %abi_pointer_value_shifted, 4294967295
  store i256 %abi_length_value, i256* @calldatasize, align 32
  br i1 %1, label %deploy, label %runtime
deploy:
  tail call void @__constructor()
  unreachable

runtime:
  %calldata_ptr = load i8 addrspace(3)*, i8 addrspace(3)** @ptr_calldata, align 32

  %cell_1_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 0
  %cell_1_ptr_casted = bitcast i8 addrspace(3)* %cell_1_ptr to i256 addrspace(3)*
  %cell_1 = load i256, i256 addrspace(3)* %cell_1_ptr_casted, align 32

  %cell_2_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 32
  %cell_2_ptr_casted = bitcast i8 addrspace(3)* %cell_2_ptr to i256 addrspace(3)*
  %cell_2 = load i256, i256 addrspace(3)* %cell_2_ptr_casted, align 32

  %cell_3_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 64
  %cell_3_ptr_casted = bitcast i8 addrspace(3)* %cell_3_ptr to i256 addrspace(3)*
  %cell_3 = load i256, i256 addrspace(3)* %cell_3_ptr_casted, align 32

  %value_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 96
  %value_ptr_casted = bitcast i8 addrspace(3)* %value_ptr to i256 addrspace(3)*
  %value = load i256, i256 addrspace(3)* %value_ptr_casted, align 32

  %offset_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 128
  %offset_ptr_casted = bitcast i8 addrspace(3)* %offset_ptr to i256 addrspace(3)*
  %offset = load i256, i256 addrspace(3)* %offset_ptr_casted, align 32

  %size_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 160
  %size_ptr_casted = bitcast i8 addrspace(3)* %size_ptr to i256 addrspace(3)*
  %size = load i256, i256 addrspace(3)* %size_ptr_casted, align 32

  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %cell_2, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32
  store i256 %cell_3, i256 addrspace(1)* inttoptr (i256 64 to i256 addrspace(1)*), align 32

  %write_ptr = inttoptr i256 %offset to i256 addrspace(1)*
  call void @__memset_uma_as1(i256 addrspace(1)* align 1 %write_ptr, i256 %value, i256 %size)

  %abi_data = shl i256 96, 96
  tail call void @llvm.eravm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
define private void @__constructor() local_unnamed_addr #0 personality i32 ()* @__personality {
  store i256 32, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 0, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 64, 96
  tail call void @llvm.eravm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0

declare void @__memset_uma_as1(i256 addrspace(1)*, i256, i256)

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
