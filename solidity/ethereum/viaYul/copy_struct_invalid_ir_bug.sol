contract C {
	struct Struct {
		function () external el;
	}
	Struct[] array;
	int externalCalled = 0;

	function ext() external {
		externalCalled++;
	}

	function f() public {
		array.push(Struct(this.ext));
		array.push(array[0]);

		array[0].el();
		array[1].el();

		assert(externalCalled == 2);
	}
}
// ----
// f() ->
// gas irOptimized: 113117
// gas legacy: 112888
// gas legacyOptimized: 112580
