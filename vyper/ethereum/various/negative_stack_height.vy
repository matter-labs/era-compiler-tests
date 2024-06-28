struct Invoice:
    AID: uint256
    Aboola: bool
    Aboolc: bool
    exists: bool

invoices: public(HashMap[uint256, Invoice])

@external
@pure
def nredit(startindex: uint256) -> (uint256[500], uint256[500], uint256[500], bool[500], uint256[500]):
    CIDs: uint256[500] = empty(uint256[500])
    dates: uint256[500] = empty(uint256[500])
    RIDs: uint256[500] = empty(uint256[500])
    Cboolas: bool[500] = empty(bool[500])
    amounts: uint256[500] = empty(uint256[500])
    return CIDs, dates, RIDs, Cboolas, amounts

@external
@view
def return500InvoicesByDates(begindate: uint256, enddate: uint256, startindex: uint256) -> (uint256[500], bool[500], uint256[500], bytes32[500], bytes32[500], bytes32[500], uint256[500], bool[500], bool[500]):
    AIDs: uint256[500] = empty(uint256[500])
    Aboolas: bool[500] = empty(bool[500])
    dates: uint256[500] = empty(uint256[500])
    Abytesas: bytes32[500] = empty(bytes32[500])
    bytesbs: bytes32[500] = empty(bytes32[500])
    bytescs: bytes32[500] = empty(bytes32[500])
    amounts: uint256[500] = empty(uint256[500])
    Aboolbs: bool[500] = empty(bool[500])
    Aboolcs: bool[500] = empty(bool[500])
    return AIDs, Aboolas, dates, Abytesas, bytesbs, bytescs, amounts, Aboolbs, Aboolcs

@external
@view
def return500PaymentsByDates(begindate: uint256, enddate: uint256, startindex: uint256) -> (uint256[500], uint256[500], uint256[500], bool[500], bytes32[3][500], bytes32[2][500], uint256[500], bool[500]):
    BIDs: uint256[500] = empty(uint256[500])
    dates: uint256[500] = empty(uint256[500])
    RIDs: uint256[500] = empty(uint256[500])
    Bboolas: bool[500] = empty(bool[500])
    bytesbs: bytes32[3][500] = empty(bytes32[3][500])
    bytescs: bytes32[2][500] = empty(bytes32[2][500])
    amounts: uint256[500] = empty(uint256[500])
    Bboolbs: bool[500] = empty(bool[500])
    return BIDs, dates, RIDs, Bboolas, bytesbs, bytescs, amounts, Bboolbs

# via yul disabled because of stack issues.

# ----
# constructor() ->
# gas legacy: 588138
# gas legacyOptimized: 349636
