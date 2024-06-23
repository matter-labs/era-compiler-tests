interface ERC165:
    # @notice Query if a contract implements an interface
    # @param interfaceID The interface identifier, as specified in ERC-165
    # @dev Interface identification is specified in ERC-165. This function
    #  uses less than 30,000 gas.
    # @return `true` if the contract implements `interfaceID` and
    #  `interfaceID` is not 0xffffffff, `false` otherwise
    def supportsInterface(interfaceID: bytes4) -> bool: view

implements: ERC165

# @dev You must not set element 0xffffffff to true
supportedInterfaces: HashMap[bytes4, bool]

@external
@view
def supportsInterface(interfaceID: bytes4) -> bool:
    return self.supportedInterfaces[interfaceID]
    
interface Simpson:
    def is2D() -> bool: nonpayable
    def skinColor() -> String[100]: nonpayable

implements: Simpson
  
@deploy
def __init__():
    self.supportedInterfaces[convert(method_id("supportsInterface(bytes4)"), bytes4)] = True
    self.supportedInterfaces[convert(slice(convert(convert(method_id("is2D()"), uint256) ^ convert(method_id("skinColor()"), uint256), bytes32), 28, 4), bytes4)] = True
    
@external
def is2D() -> bool:
    return True

@external
def skinColor() -> String[100]:
    return "yellow"

# ====
# compileViaYul: also
# ----
# supportsInterface(bytes4): left(0x01ffc9a0) -> false
# supportsInterface(bytes4): left(0x01ffc9a7) -> true
# supportsInterface(bytes4): left(0x73b6b492) -> true
# supportsInterface(bytes4): left(0x70b6b492) -> false
