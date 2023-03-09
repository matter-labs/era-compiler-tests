# This code is hidden in a separate file
event Log:
    message: String[32]

# function () external {
#     emit Log("Mal was called");
# }

# Actually we can execute the same exploit even if this function does
# not exist by using the fallback
@external
def _log():
    log Log("Mal was called")
