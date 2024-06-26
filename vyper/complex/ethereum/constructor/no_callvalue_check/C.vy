# Without inheritance
interface B3:
    def init_(): payable

@external
@payable
def f(_b3: address) -> bool:
    # Make sure none of these revert.
    b3: address = create_forwarder_to(_b3)
    extcall B3(b3).init_(value=10)
    return True
