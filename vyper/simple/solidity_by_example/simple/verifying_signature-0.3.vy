#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "verify",
#!             "calldata": [
#!                 "0xB273216C05A8c0D4F0a4Dd0d7Bae1D2EfFE636dd",
#!                 "0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C",
#!                 "123",
#!                 "0xc0",
#!                 "1",
#!                 "0x100",
#!                 "17",
#!                 "0x636f6666656520616e6420646f6e757473000000000000000000000000000000",
#!                 "65",
#!                 "0x993dab3dd91f5c6dc28e17439be475478f5635c92a56e17e82349d3fb2f16619",
#!                 "0x6f466c0b4e0c146f285204f0dcb13e5ae67bc33f4b888ec32dfe0a063e8f3f78",
#!                 "0x1b00000000000000000000000000000000000000000000000000000000000000"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

# Signature Verification
#
# How to Sign and Verify
# # Signing
# 1. Create message to sign
# 2. Hash the message
# 3. Sign the hash (off chain, keep your private key secret)
#
# # Verify
# 1. Recreate hash from the original message
# 2. Recover signer from signature and hash
# 3. Compare recovered signer to claimed signer

# 1. Unlock MetaMask account
# ethereum.enable()

# 2. Get message hash to sign
# getMessageHash(
#     0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C,
#     123,
#     "coffee and donuts",
#     1
# )
#
# hash = "0xcf36ac4f97dc10d91fc2cbb20d718e94a8cbfe0f82eaedc6a4aa38946fb797cd"
@internal
@pure
def getMessageHash(_to: address, _amount: uint256, _message: String[100], _nonce: uint256) -> bytes32:
    return keccak256(concat(slice(convert(_to, bytes32), 12, 20), convert(_amount, bytes32), convert(_message, Bytes[100]), convert(_nonce, bytes32)))

# 3. Sign message hash
# # using browser
# account = "copy paste account of signer here"
# ethereum.request({ method: "personal_sign", params: [account, hash]}).then(console.log)
#
# # using web3
# web3.personal.sign(hash, web3.eth.defaultAccount, console.log)
#
# Signature will be different for different accounts
# 0x993dab3dd91f5c6dc28e17439be475478f5635c92a56e17e82349d3fb2f166196f466c0b4e0c146f285204f0dcb13e5ae67bc33f4b888ec32dfe0a063e8f3f781b
@internal
@pure
def getEthSignedMessageHash(_messageHash: bytes32) -> bytes32:
    # Signature is produced by signing a keccak256 hash with the following format:
    # "\x19Ethereum Signed Message\n" + len(msg) + msg
    return keccak256(concat(convert("\x19Ethereum Signed Message:\n32", Bytes[28]), _messageHash))

@internal
@pure
def splitSignature(sig: Bytes[65]) -> (bytes32, bytes32, uint8):
    # First 32 bytes stores the length of the signature
    #
    # add(sig, 32) = pointer of sig + 32
    # effectively, skips first 32 bytes of signature
    #
    # mload(p) loads next 32 bytes starting at the memory address p into memory

    # first 32 bytes, after the length prefix
    r: bytes32 = extract32(sig, 0)
    # second 32 bytes
    s: bytes32 = extract32(sig, 32)
    # final byte (first byte of the next 32 bytes)
    v: uint8 = convert(slice(sig, 64, 1), uint8)

    return r, s, v

@internal
def recoverSigner(_ethSignedMessageHash: bytes32, _signature: Bytes[65]) -> address:
    r: bytes32 = empty(bytes32)
    s: bytes32 = empty(bytes32)
    v: uint8 = 0

    r, s, v = self.splitSignature(_signature)

    return ecrecover(_ethSignedMessageHash, convert(v, uint256), convert(r, uint256), convert(s, uint256))

# 4. Verify signature
# signer = 0xB273216C05A8c0D4F0a4Dd0d7Bae1D2EfFE636dd
# to = 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C
# amount = 123
# message = "coffee and donuts"
# nonce = 1
# signature =
#     0x993dab3dd91f5c6dc28e17439be475478f5635c92a56e17e82349d3fb2f166196f466c0b4e0c146f285204f0dcb13e5ae67bc33f4b888ec32dfe0a063e8f3f781b
@external
def verify(_signer: address, _to: address, _amount: uint256, _message: String[100], _nonce: uint256, signature: Bytes[65]) -> bool:
    messageHash: bytes32 = self.getMessageHash(_to, _amount, _message, _nonce)
    ethSignedMessageHash: bytes32 = self.getEthSignedMessageHash(messageHash)

    return self.recoverSigner(ethSignedMessageHash, signature) == _signer
