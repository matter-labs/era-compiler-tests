#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "bitcoin",
#!     "inputs": [
#!         {
#!             "method": "bitcoin",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "ethereum",
#!     "inputs": [
#!         {
#!             "method": "ethereum",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! }, {
#!     "name": "litecoin",
#!     "inputs": [
#!         {
#!             "method": "litecoin",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "50"
#!     ]
#! }, {
#!     "name": "zcash",
#!     "inputs": [
#!         {
#!             "method": "zcash",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "100"
#!     ]
#! } ] }

MonthJanuary: constant(uint8) = 0
MonthFebruary: constant(uint8) = 1
MonthMarch: constant(uint8) = 2
MonthApril: constant(uint8) = 3
MonthMay: constant(uint8) = 4
MonthJune: constant(uint8) = 5
MonthJuly: constant(uint8) = 6
MonthAugust: constant(uint8) = 7
MonthSeptember: constant(uint8) = 8
MonthOctober: constant(uint8) = 9
MonthNovember: constant(uint8) = 10
MonthDecember: constant(uint8) = 11

struct Date:
    year: uint256
    month: uint8
    day: uint8

BitcoinId: constant(uint8) = 0
EthereumId: constant(uint8) = 1
LitecoinId: constant(uint8) = 2
ZcashId: constant(uint8) = 3

TOKENS_COUNT: constant(uint8) = 4

struct _Balance:
    tokenId: uint8
    _balance: uint256

struct Person:
    id: uint256
    dateOfBirth: Date
    balances: _Balance[TOKENS_COUNT]

struct Result:
    id: uint256
    sum: uint256
    dateOfBirth: Date

@internal
@pure
def main(tokenId: uint8) -> Result:
    person: Person = Person(
        id=42,
        dateOfBirth: Date(
            year: 1994,
            month: MonthMarch,
            day: 16
        ),
        balances: [
            _Balance(tokenId: BitcoinId, _balance=1),
            _Balance(tokenId: EthereumId, _balance=10),
            _Balance(tokenId: LitecoinId, _balance=50),
            _Balance(tokenId: ZcashId, _balance=100)
        ]
    )

    result: Result = Result(id: person.id, sum: 0, dateOfBirth: person.dateOfBirth)

    for id: uint256 in range(TOKENS_COUNT):
        if person.balances[id].tokenId == tokenId:
            result.sum += person.balances[id]._balance
    return result

@external
def bitcoin() -> uint256:
    return self.main(BitcoinId).sum

@external
def ethereum() -> uint256:
    return self.main(EthereumId).sum

@external
def litecoin() -> uint256:
    return self.main(LitecoinId).sum

@external
def zcash() -> uint256:
    return self.main(ZcashId).sum
