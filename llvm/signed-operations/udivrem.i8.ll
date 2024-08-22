;! { "targets": [ "eravm" ], "cases": [ {
;!     "name": "pos_pos",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "42",
;!                "7"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "6",  
;!         "0"
;!     ]
;! }, {
;!     "name": "zero_pos",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0",
;!                "17"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0",
;!         "0"
;!     ]
;! }, {
;!     "name": "max_max",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "255",
;!                "255"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "1",
;!         "0"
;!     ]
;! }, {
;!     "name": "max_one",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "255",
;!                "1"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "255",
;!         "0"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "E-p:256:256-i256:256:256-S32-a:256:256"
target triple = "eravm"

@calldatasize = private unnamed_addr global i256 0
@ptr_calldata = private unnamed_addr global i8 addrspace(3)* null

declare i32 @__personality()

; Function Attrs: noreturn nounwind
define i256 @__entry(i8 addrspace(3)* %0, i1 %1) local_unnamed_addr #0 personality i32 ()* @__personality {
entry:
  store i8 addrspace(3)* %0, i8 addrspace(3)** @ptr_calldata, align 32
  %abi_pointer_value = ptrtoint i8 addrspace(3)* %0 to i256
  %abi_pointer_value_shifted = lshr i256 %abi_pointer_value, 96
  %abi_length_value = and i256 %abi_pointer_value_shifted, 4294967295
  store i256 %abi_length_value, i256* @calldatasize, align 32
  br i1 %1, label %deploy, label %runtime
deploy:
  tail call void @__constructor()
  unreachable

runtime:
  %calldata_ptr = load i8 addrspace(3)*, i8 addrspace(3)** @ptr_calldata, align 32

  %cell_1_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 0
  %cell_1_ptr_casted = bitcast i8 addrspace(3)* %cell_1_ptr to i256 addrspace(3)*
  %cell_1 = load i256, i256 addrspace(3)* %cell_1_ptr_casted, align 32
  %cell_1.t = trunc i256 %cell_1 to i8

  %cell_2_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 32
  %cell_2_ptr_casted = bitcast i8 addrspace(3)* %cell_2_ptr to i256 addrspace(3)*
  %cell_2 = load i256, i256 addrspace(3)* %cell_2_ptr_casted, align 32
  %cell_2.t = trunc i256 %cell_2 to i8

  %result = udiv i8 %cell_1.t, %cell_2.t
  %result.e = zext i8 %result to i256
  %result2 = urem i8 %cell_1.t, %cell_2.t
  %result2.e = zext i8 %result2 to i256 

  store i256 %result.e,  i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %result2.e, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 64, 96
  tail call void @llvm.eravm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
define private void @__constructor() local_unnamed_addr #0 personality i32 ()* @__personality {
  store i256 32, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 0, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 64, 96
  tail call void @llvm.eravm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
