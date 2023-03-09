interface ERC165:
    # @notice Query if a contract implements an interface
    # @param interfaceID The interface identifier, as specified in ERC-165
    # @dev Interface identification is specified in ERC-165. This function
    #  uses less than 30,000 gas.
    # @return `true` if the contract implements `interfaceID` and
    #  `interfaceID` is not 0xffffffff, `false` otherwise
    def supportsInterface(interfaceID: bytes4) -> bool: view


interface Simpson:
    def is2D() -> bool: nonpayable
    def skinColor() -> String[100]: nonpayable

implements: ERC165
implements: Simpson

@external
@view
def supportsInterface(interfaceID: bytes4) -> bool:
    return interfaceID == convert(method_id("supportsInterface(bytes4)"), bytes4) or interfaceID == convert(slice(convert(bitwise_xor(convert(method_id("is2D()"), uint256), convert(method_id("skinColor()"), uint256)), bytes32), 28, 4), bytes4) # ERC165 Simpson
        
@external
def is2D() -> bool:
    return True
    
@external
def skinColor() -> String[100]:
    return "yellow"

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# supportsInterface(bytes4): left(0x01ffc9a0) -> false
# supportsInterface(bytes4): left(0x01ffc9a7) -> true
# supportsInterface(bytes4): left(0x73b6b492) -> true
# supportsInterface(bytes4): left(0x70b6b492) -> false
