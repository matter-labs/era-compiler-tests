;! { "targets": [ "eravm" ], "cases": [ {
;!     "name": "0",
;!     "inputs": [
;!         {
;!             "method": "#fallback",
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
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

  %cell_2_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 32
  %cell_2_ptr_casted = bitcast i8 addrspace(3)* %cell_2_ptr to i256 addrspace(3)*
  %cell_2 = load i256, i256 addrspace(3)* %cell_2_ptr_casted, align 32


  ; allocate mix of multiple arrays to make sure the program do not mess up stack allocations
  %stack0 = alloca [10 x i256], align 32
  %stack1 = alloca [11 x i256], align 32
  %stack2 = alloca [13 x i256], align 32

  ; use functions so that the load/store operations are not being folded
  call void @store_value([11 x i256]* %stack1, i256 %cell_1)
  %result = call i256 @load_value([11 x i256]* %stack1)  

  ; store the values to the stack
  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 32, 96
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

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }

define void @store_value([11 x i256]* %array, i256 %val) {
  %idx_slot = getelementptr inbounds [11 x i256], [11 x i256]* %array, i256 0, i256 3
  store i256 %val, i256* %idx_slot
  ret void
}

define i256 @load_value([11 x i256]* %array) {
  %idx_slot = getelementptr inbounds [11 x i256], [11 x i256]* %array, i256 0, i256 3
  %rv = load i256, i256* %idx_slot
  ret i256 %rv
}

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0
