interface RequireInterface:
    def require_short(): nonpayable
    def wrong_number_of_params(one: uint256, two: uint256, three: Bytes[100]) -> uint256: view

contract_req: address

@external
def setContract(_contract_re: address):
    self.contract_req = _contract_re

@external
def require_short():
    extcall RequireInterface(self.contract_req).require_short()

@external
@view
def wrong_number_of_params() -> uint256:
    return staticcall RequireInterface(self.contract_req).wrong_number_of_params(1, 2, convert("", Bytes[100]))
