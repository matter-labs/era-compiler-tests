#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "hashes",
#!             "calldata": [
#!                 "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x10ca3eff73ebec87d2394fc58560afeab86dac7a21f5e402ea0a55e5c8a6758f"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-585/merkle-tree-minimization-keccak256-problem-for-m3b0

hashes: public(DynArray[bytes32, 10])
# res: bytes32

# If replace constructor with function call - works.
@deploy
def __init__():
    # self.res = keccak256(b"") If uncomment this line(with res declaration) and
    # push at the next line number - it will still not work, so maybe problem with keccak256 calls, not with storage
    self.hashes.append(keccak256(b"")) # If push here number instead keccak256 - works.
    # self.res = keccak256(b"") The same as above
    self.hashes.append(keccak256(b"")) # If push here number instead keccak256 - works.

    self.hashes.append(
        keccak256(
            _abi_encode(self.hashes[1])
        )
    ) # If push here number instead keccak256 - works.
