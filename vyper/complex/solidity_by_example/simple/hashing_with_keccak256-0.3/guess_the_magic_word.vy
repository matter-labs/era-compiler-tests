answer: public(bytes32)

@external
def __init__():
    self.answer = 0x60298f78cc0b47170ba79c10aa3851d7648bd96f2f8e46a19dbc777c36fb0c00

# Magic word is "Solidity"
@external
@view
def guess(_word: String[100]) -> bool:
    return keccak256(_word) == self.answer
