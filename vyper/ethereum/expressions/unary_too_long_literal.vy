@external
def f() -> bool:
    return 0 < bitwise_not(bitwise_not(84926290883049832306107864558384249403874903260938453235235091622489261765859))
# ====
# compileViaYul: also
# ----
# f() -> true
