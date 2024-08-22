# ZKsync Era: The ZKsync Compiler Tests Collection

[![Logo](eraLogo.svg)](https://zksync.io/)

ZKsync Era is a layer 2 rollup that uses zero-knowledge proofs to scale Ethereum without compromising on security
or decentralization. As it's EVM-compatible (with Solidity/Vyper), 99% of Ethereum projects can redeploy without
needing to refactor or re-audit any code. ZKsync Era also uses an LLVM-based compiler that will eventually enable
developers to write smart contracts in popular languages such as C++ and Rust.

This repository contains the collection of tests for the EraVM compilers.

## Types

This repository contains three types of tests:

- Ethereum - [Ethereum Solidity semantic tests format](https://github.com/ethereum/solidity/tree/develop/test/libsolidity/semanticTests).
- Simple - single-contract tests created by Matter Labs.
- Complex - multi-contract tests created by Matter Labs and vendored DeFi projects developed by other organizations.

The `solidity` and `vyper` directories have three subdirectories each, one for each type.
The `yul`, `llvm`, and `eravm` directories only contain Matter Labs simple tests as multi-contract projects are not supported in these languages.

## Matter Labs simple/complex format

Each test comprises source code files and metadata.
Simple tests have only one source file, and their metadata is written in comments that start with `!`, for example, `//!` for Solidity.
Complex tests use the `test.json` file to describe their metadata and refer to source code files.

### Metadata

Metadata is a JSON file that contains the following fields:

- `cases` - an array used to describe the test cases (more information below).
- `contracts` - this field should only be used for complex tests to describe the contract instances to deploy. For example:
```
"contracts": {
  "Main": "main.sol:Main",
  "Callable": "callable.sol:Callable"
}
```
In simple tests, only one `Test` contract instance is deployed.
- `libraries` - an optional field that specifies library addresses for the compiler linkage. Libraries can be described using the following format:
```
"libraries": {
    "libraries/UQ112x112.sol": { "UQ112x112": "UQ112x112" },
    "libraries/Math.sol": { "Math": "Math" }
},
```
- `ignore` - an optional flag that disables a test.
- `modes` - an optional field that specifies mode filters for tests. Compiler versions (for Solidity and Vyper) can be specified as SemVer range. For example:
```
"modes": [
    "Y-",
    "E-",
    "E+ >=0.4",
    "E+ <0.5"
]
```
- `system_mode` - an optional system mode compiler flag (`false` by default). Set it to true if you need to enable the EraVM extensions.
- `group` - an optional string field that specifies a test group. Currently, it is only used for benchmarking.

###  Cases

All test cases are executed in a clean context, making them independent of each other.

Each test case contains the following fields:

- `name` - a string name.
- `comment` - an optional string comment.
- `inputs` - an array of inputs (described below).
- `expected` - the expected return data for the last input (the format is described below in the input section).
- `ignore`, `modes` - the same as in the test metadata.

### Input

Inputs are utilized to specify the contract calls in the test case. The input fields are as follows:

- `comment` - an optional string comment.
- `instance` - an optional string field that represents the contract instance to call. By default, it is set to `Test`.
- `caller` - an optional string field that denotes the caller address. By default, it is set to `0xdeadbeef01000000000000000000000000000000`.
- `method` - a string field with three options:
    1. `#deployer` for the deployer call.
    2. `#fallback` to perform a call with the raw calldata.
    3. Any other string will be recognized as a function name to call. The function selector will be appended at the beginning of the calldata.
- `calldata` - the input calldata. There are two variants:
    1. The hexadecimal string, for example: `"calldata": "0x00"`.
    2. The numbers array. Hex and decimal (including negative) literals or instance addresses (like `Test.address`) are supported. Every number will be padded to 32 bytes. Example: `"calldata": [ "1", "2"]`.
- `value` - an optional string field to specify `msg.value`, a decimal number with the ` wei` or ` ETH` suffix.
- `storage` - storage values to set before the call. It is a mapping, where the key is the contract address (`InstanceName.address` can be used), and the value is an array or mapping. Example:
```
"storage": { "Test.address": [
    "1", "2", "3", "4"
] }
```
- `expected` - the expected return data for the input. There are two variants of the format:
    1. An array of numbers, the same as calldata. Example: `"expected": [ "1", "2"]`.
    2. Extended expected, which contains three main fields: `return_data` - an array, `exception` - a boolean flag indicating whether the revert is expected, `events` - an array of the expected events, where each event contains `address`(optional), `topics`, `values` fields. Example:
```
"expected": {
    "return_data": [
        "Shit.address"
    ],
    "events": [
        {
            "topics": [
                "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
                "0x0000000000000000000000000000000000000000000000000000000000000000",
                "0x000000000000000000000000deadbeef00000000000000000000000000000002"
            ],
            "values": [
                "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
            ]
        }
    ],
    "exception": false
}
```

The `expected` field can also be an array of the objects described above if different expected data is needed for different compiler versions.
A `compiler_version` as a SemVer range can be specified for the extended expected.
The `expected` field is optional for the input, and the default value is empty return data.

Additional notes:

- `InstanceName.address` can be used instead of numbers (in the expected, calldata, storage) to insert the contract instance address
- If the deployer call is not specified for some instance, it will be generated automatically with empty calldata.


## Ethereum Solidity semantic tests format

The format of these test files is that of the Ethereum Solidity semantic [tests](https://github.com/ethereum/solidity/tree/develop/test/libsolidity/semanticTests).  
For a new test file to be run by the `era-compiler-tester` integration test framework, its name must be added to the index file for its superdirectory, either `solidity/ethereum/index.yaml` or `vyper/ethereum/index.yaml`, followed by a colon and an `enabled: true` line.  `hash:` and `version:` fields are optional.

The `tests-updater` utility may be helpful for updating or adding multiple test files; for details, see the help: 

```
target/release/tests-updater --help
```

## License

The Test Collection is distributed under the terms of either

- Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or <http://www.apache.org/licenses/LICENSE-2.0>)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or <http://opensource.org/licenses/MIT>)

at your option.

Additionally, this repository vendors test projects preserving their original licenses:

- [UniswapV2](./solidity/complex/defi/UniswapV2Router01)
- [UniswapV3](./solidity/complex/defi/UniswapV3)
- [StarkEx Verifier](./solidity/complex/defi/starkex-verifier)
- [Curve](./vyper/complex/defi/Curve)
- [Mooniswap](./solidity/complex/defi/Mooniswap)
- [SHIT](./solidity/complex/defi/shitdao)

These projects are modified for the purposes of testing our compiler toolchain and are not used outside of this repository.
Visit the project directories to discover the terms of each license in detail. The projects are licensed in either per-file or
per-project manner.

## Official Links

- [Website](https://zksync.io/)
- [GitHub](https://github.com/matter-labs)
- [Twitter](https://twitter.com/zksync)
- [Twitter for Devs](https://twitter.com/ZKsyncDevs)
- [Discord](https://join.zksync.dev/)

## Disclaimer

ZKsync Era has been through extensive testing and audits, and although it is live, it is still in alpha state and
will undergo further audits and bug bounty programs. We would love to hear our community's thoughts and suggestions
about it!
It's important to note that forking it now could potentially lead to missing important
security updates, critical features, and performance improvements.
