# Without inheritance
import B3 as B3

@external
@payable
def f(_b3: address) -> bool:
    # Make sure none of these revert.
    b3: address = create_forwarder_to(_b3)
    B3(b3).init_(value=10)
    return True