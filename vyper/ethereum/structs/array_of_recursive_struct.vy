struct RecursiveStruct:
    vals: DynArray[RecursiveStruct, 42]
    
@external
@pure
def func():
    val: RecursiveStruct[1] = [RecursiveStruct(vals=[])]
    for _ in range(42):
        val[0].vals.append(empty(RecursiveStruct))
    assert len(val[0].vals) == 42
    
# ====
# compileToEwasm: also
# ----
# func() ->
