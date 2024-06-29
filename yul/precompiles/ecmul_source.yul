//! { "enable_eravm_extensions" : true,
//!   "group": "Precompiles",
//!   "targets": [ "EraVM" ], "cases": [ {
//!     "name": "(0, 0) * 0",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0x0",
//!                "0x0",
//!                "0x0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0",
//!         "0x0"
//!     ]
//! }, {
//!     "name": "(1, 2) * 21888242871839275222246405745257275088548364400416034343698204186575808495617",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0x1",
//!                "0x2",
//!                "21888242871839275222246405745257275088548364400416034343698204186575808495617"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0",
//!         "0x0"
//!     ]
//! }, {
//!     "name": "7827_6598_5616",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "21888242871839275222246405745257275088548364400416034343698204186575808495616"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1a87b0584ce92f4593d161480614f2989035225609f08058ccfa3d0f940febe3",
//!         "0x163511ddc1c3f25d396745388200081287b3fd1472d8339d5fecb2eae0830451"
//!     ]
//! }, {
//!     "name": "1_2_340282366920938463463374607431768211456",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "2",
//!                "340282366920938463463374607431768211456"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x13b8fec4a1eb2c7e3ccc07061ad516277c3bbe57bd4a302012b58a517f6437a4",
//!         "0x224d978b5763831dff16ce9b2c42222684835fedfc70ffec005789bb0c10de36"
//!     ]
//! }, {
//!     "name": "1_2_9935",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "2",
//!                "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x2f588cffe99db877a4434b598ab28f81e0522910ea52b45f0adaa772b2d5d352",
//!         "0x12f42fa8fd34fb1b33d8c6a718b6590198389b26fc9d8808d971f8b009777a97"
//!     ]
//! }, {
//!     "name": "1_2_5617",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "2",
//!                "21888242871839275222246405745257275088548364400416034343698204186575808495617"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0",
//!         "0"
//!     ]
//! }, {
//!     "name": "1_2_2",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "2",
//!                "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x030644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd3",
//!         "0x15ed738c0e0a7c92e7845f96b2ae9c0a68a6a449e3538fc7ff3ebf7a5a18a2c4"
//!     ]
//! }, {
//!     "name": "7827_6598_1456",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "340282366920938463463374607431768211456"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1051acb0700ec6d42a88215852d582efbaef31529b6fcbc3277b5c1b300f5cf0",
//!         "0x135b2394bb45ab04b8bd7611bd2dfe1de6a4e6e2ccea1ea1955f577cd66af85b"
//!     ]
//! }, {
//!     "name": "7827_6598_0",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0",
//!         "0"
//!     ]
//! }, {
//!     "name": "7827_6598_1",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1a87b0584ce92f4593d161480614f2989035225609f08058ccfa3d0f940febe3",
//!         "0x1a2f3c951f6dadcc7ee9007dff81504b0fcd6d7cf59996efdc33d92bf7f9f8f6"
//!     ]
//! }, {
//!     "name": "7827_6598_17",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "17"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0c9750005a5a9e4718e825bc2c67c5deb7d076b293d8e174a90987792b7271c2",
//!         "0x1b51bb79bb276f20f8c831424fb8fb7492f14f47929e027b2a03ba792cd57885"
//!     ]
//! }, {
//!     "name": "7827_6598_5617",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "21888242871839275222246405745257275088548364400416034343698204186575808495617"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0",
//!         "0"
//!     ]
//! }, {
//!     "name": "7827_6598_9",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "9"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1dbad7d39dbc56379f78fac1bca147dc8e66de1b9d183c7b167351bfe0aeab74",
//!         "0x2cd757d51289cd8dbd0acf9e673ad67d0f0a89f912af47ed1be53664f5692575"
//!     ]
//! }, {
//!     "name": "1_2_5616",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "2",
//!                "21888242871839275222246405745257275088548364400416034343698204186575808495616"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0000000000000000000000000000000000000000000000000000000000000001",
//!         "0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd45"
//!     ]
//! }, {
//!     "name": "7827_6598_5616",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "11999875504842010600789954262886096740416429265635183817701593963271973497827",
//!                "11843594000332171325303933275547366297934113019079887694534126289021216356598",
//!                "21888242871839275222246405745257275088548364400416034343698204186575808495616"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1a87b0584ce92f4593d161480614f2989035225609f08058ccfa3d0f940febe3",
//!         "0x163511ddc1c3f25d396745388200081287b3fd1472d8339d5fecb2eae0830451"
//!     ]
//! }, {
//!     "name": "0_0_n",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0",
//!                "0",
//!                "21888242871839275222246405745257275088696311157297823662689037894645226208583"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0",
//!         "0"
//!     ]
//! }, {
//!     "name": "1_3_n",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "3",
//!                "21888242871839275222246405745257275088696311157297823662689037894645226208583"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!        "exception": true,
//!        "return_data": []
//!     }
//! }, {
//!     "name": "0_3_n",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0",
//!                "3",
//!                "21888242871839275222246405745257275088696311157297823662689037894645226208583"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!        "exception": true,
//!        "return_data": []
//!     }
//! } ] }

object "EcMul" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }
    object "EcMul_deployed" {
        code {
            ////////////////////////////////////////////////////////////////
            //                      CONSTANTS
            ////////////////////////////////////////////////////////////////

            /// @notice Constant function for value one in Montgomery form.
            /// @dev This value was precomputed using Python.
            /// @return m_one The value one in Montgomery form.
            function MONTGOMERY_ONE() -> m_one {
                m_one := 6350874878119819312338956282401532409788428879151445726012394534686998597021
            }

            /// @notice Constant function for value three in Montgomery form.
            /// @dev This value was precomputed using Python.
            /// @return m_three The value three in Montgomery form.
            function MONTGOMERY_THREE() -> m_three {
                m_three := 19052624634359457937016868847204597229365286637454337178037183604060995791063
            }

            /// @notice Constant function for value 3*b (i.e. 9) in Montgomery form.
            /// @dev This value was precomputed using Python.
            /// @return m_b3 The value 9 in Montgomery form.
            function MONTGOMERY_B3() -> m_b3 {
                m_b3 := 13381388159399823366557795051099241510703237597767364208733475022892534956023
            }

            /// @notice Constant function for the alt_bn128 field order.
            /// @dev See https://eips.ethereum.org/EIPS/eip-196 for further details.
            /// @return ret The alt_bn128 field order.
            function P() -> ret {
                ret := 21888242871839275222246405745257275088696311157297823662689037894645226208583
            }

            /// @notice Constant function for the pre-computation of R^2 % N for the Montgomery REDC algorithm.
            /// @dev R^2 is the Montgomery residue of the value 2^512.
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_REDC_algorithm for further detals.
            /// @dev This value was precomputed using Python.
            /// @return ret The value R^2 modulus the curve field order.
            function R2_MOD_P() -> ret {
                ret := 3096616502983703923843567936837374451735540968419076528771170197431451843209
            }

            /// @notice Constant function for the pre-computation of N' for the Montgomery REDC algorithm.
            /// @dev N' is a value such that NN' = -1 mod R, with N being the curve field order.
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_REDC_algorithm for further detals.
            /// @dev This value was precomputed using Python.
            /// @return ret The value N'.
            function N_PRIME() -> ret {
                ret := 111032442853175714102588374283752698368366046808579839647964533820976443843465
            }

            // ////////////////////////////////////////////////////////////////
            //                      HELPER FUNCTIONS
            // ////////////////////////////////////////////////////////////////

            /// @dev Executes the `precompileCall` opcode.
			function precompileCall(precompileParams, gasToBurn) -> ret {
				// Compiler simulation for calling `precompileCall` opcode
				ret := verbatim_2i_1o("precompile", precompileParams, gasToBurn)
			}

            /// @notice Burns remaining gas until revert.
            /// @dev This function is used to burn gas in the case of a failed precompile call.
			function burnGas() {
				// Precompiles that do not have a circuit counterpart
				// will burn the provided gas by calling this function.
				precompileCall(0, gas())
		  	}

            /// @notice Retrieves the highest half of the multiplication result.
            /// @param multiplicand The value to multiply.
            /// @param multiplier The multiplier.
            /// @return ret The highest half of the multiplication result.
            function getHighestHalfOfMultiplication(multiplicand, multiplier) -> ret {
                ret := verbatim_2i_1o("mul_high", multiplicand, multiplier)
            }

            /// @notice Computes an addition and checks for overflow.
            /// @param augend The value to add to.
            /// @param addend The value to add.
            /// @return sum The sum of the two values.
            /// @return overflowed True if the addition overflowed, false otherwise.
            function overflowingAdd(augend, addend) -> sum, overflowed {
                sum := add(augend, addend)
                overflowed := lt(sum, augend)
            }

            /// @notice Checks if the LSB of a number is 1.
            /// @param x The number to check.
            /// @return ret True if the LSB is 1, false otherwise.
            function lsbIsOne(x) -> ret {
                ret := and(x, 1)
            }

            /// @notice Computes the inverse in Montgomery Form of a number in Montgomery Form.
            /// @dev Reference: https://github.com/lambdaclass/lambdaworks/blob/main/math/src/field/fields/montgomery_backed_prime_fields.rs#L169
            /// @dev Let `base` be a number in Montgomery Form, then base = a*R mod P() being `a` the base number (not in Montgomery Form)
            /// @dev Let `inv` be the inverse of a number `a` in Montgomery Form, then inv = a^(-1)*R mod P()
            /// @dev The original binary extended euclidean algorithms takes a number a and returns a^(-1) mod N
            /// @dev In our case N is P(), and we'd like the input and output to be in Montgomery Form (a*R mod P() 
            /// @dev and a^(-1)*R mod P() respectively).
            /// @dev If we just pass the input as a number in Montgomery Form the result would be a^(-1)*R^(-1) mod P(),
            /// @dev but we want it to be a^(-1)*R mod P().
            /// @dev For that, we take advantage of the algorithm's linearity and multiply the result by R^2 mod P()
            /// @dev to get R^2*a^(-1)*R^(-1) mod P() = a^(-1)*R mod P() as the desired result in Montgomery Form.
            /// @dev `inv` takes the value of `b` or `c` being the result sometimes `b` and sometimes `c`. In paper
            /// @dev multiplying `b` or `c` by R^2 mod P() results on starting their values as b = R2_MOD_P() and c = 0.
            /// @param base A number `a` in Montgomery Form, then base = a*R mod P().
            /// @return inv The inverse of a number `a` in Montgomery Form, then inv = a^(-1)*R mod P().
            function binaryExtendedEuclideanAlgorithm(base) -> inv {
                let modulus := P()
                let u := base
                let v := modulus
                // Avoids unnecessary reduction step.
                let b := R2_MOD_P()
                let c := 0

                for {} and(iszero(eq(u, 1)), iszero(eq(v, 1))) {} {
                    for {} iszero(and(u, 1)) {} {
                        u := shr(1, u)
                        let current := b
                        switch and(current, 1)
                        case 0 {
                            b := shr(1, b)
                        }
                        case 1 {
                            b := shr(1, add(b, modulus))
                        }
                    }

                    for {} iszero(and(v, 1)) {} {
                        v := shr(1, v)
                        let current := c
                        switch and(current, 1)
                        case 0 {
                            c := shr(1, c)
                        }
                        case 1 {
                            c := shr(1, add(c, modulus))
                        }
                    }

                    switch gt(v, u)
                    case 0 {
                        u := sub(u, v)
                        if lt(b, c) {
                            b := add(b, modulus)
                        }
                        b := sub(b, c)
                    }
                    case 1 {
                        v := sub(v, u)
                        if lt(c, b) {
                            c := add(c, modulus)
                        }
                        c := sub(c, b)
                    }
                }

                switch eq(u, 1)
                case 0 {
                    inv := c
                }
                case 1 {
                    inv := b
                }
            }

            /// @notice Implementation of the Montgomery reduction algorithm (a.k.a. REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_The_REDC_algorithm
            /// @param lowestHalfOfT The lowest half of the value T.
            /// @param higherHalfOfT The higher half of the value T.
            /// @return S The result of the Montgomery reduction.
            function REDC(lowestHalfOfT, higherHalfOfT) -> S {
                let m := mul(lowestHalfOfT, N_PRIME())
                let hi := add(higherHalfOfT, getHighestHalfOfMultiplication(m, P()))
                let lo, overflowed := overflowingAdd(lowestHalfOfT, mul(m, P()))
                if overflowed {
                    hi := add(hi, 1)
                }
                S := hi
                if iszero(lt(hi, P())) {
                    S := sub(hi, P())
                }
            }

            /// @notice Encodes a field element into the Montgomery form using the Montgomery reduction algorithm (REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_The_REDC_algorithm for further details on transforming a field element into the Montgomery form.
            /// @param a The field element to encode.
            /// @return ret The field element in Montgomery form.
            function $llvm_AlwaysInline_llvm$_intoMontgomeryForm(a) -> ret {
                let hi := getHighestHalfOfMultiplication(a, R2_MOD_P())
                let lo := mul(a, R2_MOD_P())
                ret := REDC(lo, hi)
            }

            /// @notice Decodes a field element out of the Montgomery form using the Montgomery reduction algorithm (REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_The_REDC_algorithm for further details on transforming a field element out of the Montgomery form.
            /// @param m The field element in Montgomery form to decode.
            /// @return ret The decoded field element.
            function $llvm_AlwaysInline_llvm$_outOfMontgomeryForm(m) -> ret {
                let hi := 0
                let lo := m
                ret := REDC(lo, hi)
            }

            /// @notice Computes the Montgomery addition.
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_The_REDC_algorithm for further details on the Montgomery multiplication.
            /// @param augend The augend in Montgomery form.
            /// @param addend The addend in Montgomery form.
            /// @return ret The result of the Montgomery addition.
            function montgomeryAdd(augend, addend) -> ret {
                ret := add(augend, addend)
                if iszero(lt(ret, P())) {
                    ret := sub(ret, P())
                }
            }

            /// @notice Computes the Montgomery subtraction.
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_The_REDC_algorithm for further details on the Montgomery multiplication.
            /// @param minuend The minuend in Montgomery form.
            /// @param subtrahend The subtrahend in Montgomery form.
            /// @return ret The result of the Montgomery addition.
            function montgomerySub(minuend, subtrahend) -> ret {
                ret := montgomeryAdd(minuend, sub(P(), subtrahend))
            }

            /// @notice Computes the Montgomery multiplication using the Montgomery reduction algorithm (REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_The_REDC_algorithm for further details on the Montgomery multiplication.
            /// @param multiplicand The multiplicand in Montgomery form.
            /// @param multiplier The multiplier in Montgomery form.
            /// @return ret The result of the Montgomery multiplication.
            function montgomeryMul(multiplicand, multiplier) -> ret {
                let hi := getHighestHalfOfMultiplication(multiplicand, multiplier)
                let lo := mul(multiplicand, multiplier)
                ret := REDC(lo, hi)
            }

            /// @notice Computes the Montgomery modular inverse skipping the Montgomery reduction step.
            /// @dev The Montgomery reduction step is skept because a modification in the binary extended Euclidean algorithm is used to compute the modular inverse.
            /// @dev See the function `binaryExtendedEuclideanAlgorithm` for further details.
            /// @param a The field element in Montgomery form to compute the modular inverse of.
            /// @return invmod The result of the Montgomery modular inverse (in Montgomery form).
            function montgomeryModularInverse(a) -> invmod {
                invmod := binaryExtendedEuclideanAlgorithm(a)
            }

            /// @notice Checks if a coordinate is on the curve field order.
            /// @dev A coordinate is on the curve field order if it is on the range [0, curveFieldOrder).
            /// @param coordinate The coordinate to check.
            /// @return ret True if the coordinate is in the range, false otherwise.
            function coordinateIsOnFieldOrder(coordinate) -> ret {
                ret := lt(coordinate, P())
            }

            /// @notice Checks if affine coordinates are on the curve field order.
            /// @dev Affine coordinates are on the curve field order if both coordinates are on the range [0, curveFieldOrder).
            /// @param x The x coordinate to check.
            /// @param y The y coordinate to check.
            /// @return ret True if the coordinates are in the range, false otherwise.
            function affinePointCoordinatesAreOnFieldOrder(x, y) -> ret {
                ret := and(coordinateIsOnFieldOrder(x), coordinateIsOnFieldOrder(y))
            }

            /// @notice Checks if projective coordinates are on the curve field order.
            /// @dev Projective coordinates are on the curve field order if the coordinates are on the range [0, curveFieldOrder) and the z coordinate is not zero.
            /// @param x The x coordinate to check.
            /// @param y The y coordinate to check.
            /// @param z The z coordinate to check.
            /// @return ret True if the coordinates are in the range, false otherwise.
            function projectivePointCoordinatesAreOnFieldOrder(x, y, z) -> ret {
                let _x, _y := projectiveIntoAffine(x, y, z)
                ret := and(z, affinePointCoordinatesAreOnFieldOrder(_x, _y))
            }

            // @notice Checks if a point in affine coordinates in Montgomery form is on the curve.
            // @dev The curve in question is the alt_bn128 curve.
            // @dev The Short Weierstrass equation of the curve is y^2 = x^3 + 3.
            // @param x The x coordinate of the point in Montgomery form.
            // @param y The y coordinate of the point in Montgomery form.
            // @return ret True if the point is on the curve, false otherwise.
			function affinePointIsOnCurve(x, y) -> ret {
                let ySquared := montgomeryMul(y, y)
                let xSquared := montgomeryMul(x, x)
                let xQubed := montgomeryMul(xSquared, x)
                let xQubedPlusThree := montgomeryAdd(xQubed, MONTGOMERY_THREE())

                ret := eq(ySquared, xQubedPlusThree)
			}

            /// @notice Checks if a point in affine coordinates is the point at infinity.
            /// @dev The point at infinity is defined as the point (0, 0).
            /// @dev See https://eips.ethereum.org/EIPS/eip-196 for further details.
            /// @param x The x coordinate of the point in Montgomery form.
            /// @param y The y coordinate of the point in Montgomery form.
            /// @return ret True if the point is the point at infinity, false otherwise.
            function affinePointIsInfinity(x, y) -> ret {
                ret := and(iszero(x), iszero(y))
            }

            /// @notice Checks if a point in projective coordinates in Montgomery form is the point at infinity.
            /// @dev The point at infinity is defined as the point (0, 0, 0).
            /// @param x The x coordinate of the point in Montgomery form.
            /// @param y The y coordinate of the point in Montgomery form.
            /// @param z The z coordinate of the point in Montgomery form.
            /// @return ret True if the point is the point at infinity, false otherwise.
            function projectivePointIsInfinity(x, y, z) -> ret {
                ret := iszero(z)
            }

            /// @notice Converts a point in affine coordinates to projective coordinates in Montgomery form.
            /// @dev The point at infinity is defined as the point (0, 0, 0).
            /// @dev For performance reasons, the point is assumed to be previously checked to be on the 
            /// @dev curve and not the point at infinity.
            /// @param xp The x coordinate of the point P in affine coordinates in Montgomery form.
            /// @param yp The y coordinate of the point P in affine coordinates in Montgomery form.
            /// @return xr The x coordinate of the point P in projective coordinates in Montgomery form.
            /// @return yr The y coordinate of the point P in projective coordinates in Montgomery form.
            /// @return zr The z coordinate of the point P in projective coordinates in Montgomery form.
            function projectiveFromAffine(xp, yp) -> xr, yr, zr {
                xr := xp
                yr := yp
                zr := MONTGOMERY_ONE()
            }

            /// @notice Converts a point in projective coordinates to affine coordinates in Montgomery form.
            /// @dev See https://www.nayuki.io/page/elliptic-curve-point-addition-in-projective-coordinates for further details.
            /// @dev Reverts if the point is not on the curve.
            /// @param xp The x coordinate of the point P in projective coordinates in Montgomery form.
            /// @param yp The y coordinate of the point P in projective coordinates in Montgomery form.
            /// @param zp The z coordinate of the point P in projective coordinates in Montgomery form.
            /// @return xr The x coordinate of the point P in affine coordinates in Montgomery form.
            /// @return yr The y coordinate of the point P in affine coordinates in Montgomery form.
            function projectiveIntoAffine(xp, yp, zp) -> xr, yr {
                if zp {
                     let zp_inv := montgomeryModularInverse(zp)
                     xr := montgomeryMul(xp, zp_inv)
                     yr := montgomeryMul(yp, zp_inv)
                 }
            }

            /// @notice Doubles a point in projective coordinates in Montgomery form.
            /// @dev See Algorithm 9 in https://eprint.iacr.org/2015/1060.pdf for further details.
            /// @dev The point is assumed to be on the curve.
            /// @dev It works correctly for the point at infinity.
            /// @param xp The x coordinate of the point P in projective coordinates in Montgomery form.
            /// @param yp The y coordinate of the point P in projective coordinates in Montgomery form.
            /// @param zp The z coordinate of the point P in projective coordinates in Montgomery form.
            /// @return xr The x coordinate of the point 2P in projective coordinates in Montgomery form.
            /// @return yr The y coordinate of the point 2P in projective coordinates in Montgomery form.
            /// @return zr The z coordinate of the point 2P in projective coordinates in Montgomery form.
            function projectiveDouble(xp, yp, zp) -> xr, yr, zr {
                let t0 := montgomeryMul(yp, yp)
                zr := montgomeryAdd(t0, t0)
                zr := montgomeryAdd(zr, zr)
                zr := montgomeryAdd(zr, zr)
                let t1 := montgomeryMul(yp, zp)
                let t2 := montgomeryMul(zp, zp)
                t2 := montgomeryMul(MONTGOMERY_B3(), t2)
                xr := montgomeryMul(t2, zr)
                yr := montgomeryAdd(t0, t2)
                zr := montgomeryMul(t1, zr)
                t1 := montgomeryAdd(t2, t2)
                t2 := montgomeryAdd(t1, t2)
                t0 := montgomerySub(t0, t2)
                yr := montgomeryMul(t0, yr)
                yr := montgomeryAdd(xr, yr)
                t1 := montgomeryMul(xp, yp)
                xr := montgomeryMul(t0, t1)
                xr := montgomeryAdd(xr, xr)
            }

            ////////////////////////////////////////////////////////////////
            //                      FALLBACK
            ////////////////////////////////////////////////////////////////

            // Retrieve the coordinates from the calldata
            let x := calldataload(0)
            let y := calldataload(32)
            if iszero(affinePointCoordinatesAreOnFieldOrder(x, y)) {
                burnGas()
            }
            let scalar := calldataload(64)

            if affinePointIsInfinity(x, y) {
                // Infinity * scalar = Infinity
                mstore(0x00, 0x00)
                mstore(0x20, 0x00)
                return(0x00, 0x40)
            }

            let m_x := $llvm_AlwaysInline_llvm$_intoMontgomeryForm(x)
            let m_y := $llvm_AlwaysInline_llvm$_intoMontgomeryForm(y)

            // Ensure that the point is in the curve (Y^2 = X^3 + 3).
            if iszero(affinePointIsOnCurve(m_x, m_y)) {
                burnGas()
            }

            if eq(scalar, 0) {
                // P * 0 = Infinity
                mstore(0x00, 0x00)
                mstore(0x20, 0x00)
                return(0x00, 0x40)
            }
            if eq(scalar, 1) {
                // P * 1 = P
                mstore(0x00, x)
                mstore(0x20, y)
                return(0x00, 0x40)
            }

            let xp, yp, zp := projectiveFromAffine(m_x, m_y)

            if eq(scalar, 2) {
                let xr, yr, zr := projectiveDouble(xp, yp, zp)
                
                xr, yr := projectiveIntoAffine(xr, yr, zr)
                xr := $llvm_AlwaysInline_llvm$_outOfMontgomeryForm(xr)
                yr := $llvm_AlwaysInline_llvm$_outOfMontgomeryForm(yr)

                mstore(0x00, xr)
                mstore(0x20, yr)
                return(0x00, 0x40)
            }

            let xq := xp
            let yq := yp
            let zq := zp
            let xr := 0
            let yr := MONTGOMERY_ONE()
            let zr := 0
            for {} scalar {} {
                if lsbIsOne(scalar) {
                    let rIsInfinity := projectivePointIsInfinity(xr, yr, zr)

                    if rIsInfinity {
                        // Infinity + P = P
                        xr := xq
                        yr := yq
                        zr := zq

                        xq, yq, zq := projectiveDouble(xq, yq, zq)
                        // Check next bit
                        scalar := shr(1, scalar)
                        continue
                    }

                    let t0 := montgomeryMul(yq, zr)
                    let t1 := montgomeryMul(yr, zq)
                    let t := montgomerySub(t0, t1)
                    let u0 := montgomeryMul(xq, zr)
                    let u1 := montgomeryMul(xr, zq)
                    let u := montgomerySub(u0, u1)

                    // t = (yq*zr - yr*zq); u = (xq*zr - xr*zq)
                    if iszero(or(t, u)) { 
                        // P + P = 2P
                        xr, yr, zr := projectiveDouble(xr, yr, zr)

                        xq := xr
                        yq := yr
                        zq := zr
                        // Check next bit
                        scalar := shr(1, scalar)
                        continue
                    }

                    // P1 + P2 = P3
                    let u2 := montgomeryMul(u, u)
                    let u3 := montgomeryMul(u2, u)
                    let v := montgomeryMul(zq, zr)
                    let w := montgomerySub(montgomeryMul(montgomeryMul(t, t), v), montgomeryMul(u2, montgomeryAdd(u0, u1)))
    
                    xr := montgomeryMul(u, w)
                    yr := montgomerySub(montgomeryMul(t, montgomerySub(montgomeryMul(u0, u2), w)), montgomeryMul(t0, u3))
                    zr := montgomeryMul(u3, v)
                }

                xq, yq, zq := projectiveDouble(xq, yq, zq)
                // Check next bit
                scalar := shr(1, scalar)
            }

            xr, yr := projectiveIntoAffine(xr, yr, zr)
            xr := $llvm_AlwaysInline_llvm$_outOfMontgomeryForm(xr)
            yr := $llvm_AlwaysInline_llvm$_outOfMontgomeryForm(yr)

            mstore(0, xr)
            mstore(32, yr)
            return(0, 64)
        }
    }
}
