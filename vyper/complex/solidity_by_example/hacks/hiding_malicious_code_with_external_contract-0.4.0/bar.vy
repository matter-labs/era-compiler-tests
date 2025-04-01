event Log:
    message: String[32]

@external
def _log():
    log Log("Bar was called")