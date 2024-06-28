s: String[100]

@deploy
def __init__():
    self.s = "doh"

struct _string:
    inner: String[100]

@external
def f() -> (String[100], String[100]):
    t: String[100] = "ray"
    x: _string[3] = [_string(inner=self.s), _string(inner=t), _string(inner="mi")]
    return (x[1].inner, x[2].inner)

# ----
# f() -> 0x40, 0x80, 0x3, "ray", 0x2, "mi"
