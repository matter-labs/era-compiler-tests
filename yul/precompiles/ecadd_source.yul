//! { "cases": [ {
//!     "name": "(0, 0) + (0, 0)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0x0",
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
//!     "name": "(1, 2) + (0, 0)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0x1",
//!                "0x2",
//!                "0x0",
//!                "0x0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1",
//!         "0x2"
//!     ]
//! }, {
//!     "name": "(0, 0) + (1, 2)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0x0",
//!                "0x0",
//!                "0x1",
//!                "0x2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x1",
//!         "0x2"
//!     ]
//! }, {
//!     "name": "(1, 2) + (1, 2)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0x1",
//!                "0x2",
//!                "0x1",
//!                "0x2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!        "0x030644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd3",
//!        "0x15ed738c0e0a7c92e7845f96b2ae9c0a68a6a449e3538fc7ff3ebf7a5a18a2c4"
//!     ]
//! }, {
//!     "name": "(1, 3) + (0, 0)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "1",
//!                "3",
//!                "0",
//!                "0"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!        "exception": true, 
//!        "return_data": []
//!     }
//! }, {
//!     "name": "(6, 9) + (19274124, 124124)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "6",
//!                "9",
//!                "19274124",
//!                "124124"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!        "exception": true, 
//!        "return_data": []
//!     }
//! }, {
//!     "name": "(0, 3) + (1, 2)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "0",
//!                "3",
//!                "1",
//!                "2"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!        "exception": true, 
//!        "return_data": []
//!     }
//! }, {
//!     "name": "(10744596414106452074759370245733544594153395043370666422502510773307029471145, 848677436511517736191562425154572367705380862894644942948681172815252343932) + (10744596414106452074759370245733544594153395043370666422502510773307029471145, 21039565435327757486054843320102702720990930294403178719740356721829973864651)",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "10744596414106452074759370245733544594153395043370666422502510773307029471145",
//!                "848677436511517736191562425154572367705380862894644942948681172815252343932",
//!                "10744596414106452074759370245733544594153395043370666422502510773307029471145",
//!                "21039565435327757486054843320102702720990930294403178719740356721829973864651"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!        "0x0",
//!        "0x0"
//!     ]
//! }, {
//!     "name": "(10744596414106452074759370245733544594153395043370666422502510773307029471145, 848677436511517736191562425154572367705380862894644942948681172815252343932) + (1624070059937464756887933993293429854168590106605707304006200119738501412969, 3269329550605213075043232856820720631601935657990457502777101397807070461336",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                "10744596414106452074759370245733544594153395043370666422502510773307029471145",
//!                "848677436511517736191562425154572367705380862894644942948681172815252343932",
//!                "1624070059937464756887933993293429854168590106605707304006200119738501412969",
//!                "3269329550605213075043232856820720631601935657990457502777101397807070461336"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!        "0x15bf2bb17880144b5d1cd2b1f46eff9d617bffd1ca57c37fb5a49bd84e53cf66",
//!        "0x049c797f9ce0d17083deb32b5e36f2ea2a212ee036598dd7624c168993d1355f"
//!     ]
//! } ] }

object "EcAdd" {
    code {
        mstore(0, 0x20)
        mstore(0x20, 0)
        return(0, 64)
    }

    object "EcAdd_deployed" {
        code {
            ////////////////////////////////////////////////////////////////
            //                      CONSTANTS
            ////////////////////////////////////////////////////////////////

            /// @notice Constant function for value zero.
            /// @return zero The value zero.
            function ZERO() -> zero {
                zero := 0x0
            }

            /// @notice Constant function for value one.
            /// @return one The value one.
            function ONE() -> one {
                one := 0x1
            }

            /// @notice Constant function for value three in Montgomery form.
            /// @dev This value was precomputed using Python.
            /// @return m_three The value three in Montgomery form.
            function MONTGOMERY_THREE() -> m_three {
                m_three := 19052624634359457937016868847204597229365286637454337178037183604060995791063
            }

            /// @notice Constant function for the alt_bn128 group order.
            /// @dev See https://eips.ethereum.org/EIPS/eip-196 for further details.
            /// @return ret The alt_bn128 group order.
            function ALT_BN128_GROUP_ORDER() -> ret {
                ret := 21888242871839275222246405745257275088696311157297823662689037894645226208583
            }

            /// @notice Constant function for the pre-computation of R^2 % N for the Montgomery REDC algorithm.
            /// @dev R^2 is the Montgomery residue of the value 2^512.
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_REDC_algorithm for further detals.
            /// @dev This value was precomputed using Python.
            /// @return ret The value R^2 modulus the curve group order.
            function R2_MOD_ALT_BN128_GROUP_ORDER() -> ret {
                ret := 3096616502983703923843567936837374451735540968419076528771170197431451843209
            }

            /// @notice Constant function for the pre-computation of N' for the Montgomery REDC algorithm.
            /// @dev N' is a value such that NN' = -1 mod R, with N being the curve group order.
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication#The_REDC_algorithm for further detals.
            /// @dev This value was precomputed using Python.
            /// @return ret The value N'.
            function N_PRIME() -> ret {
                ret := 111032442853175714102588374283752698368366046808579839647964533820976443843465
            }

            //////////////////////////////////////////////////////////////////
            //                      HELPER FUNCTIONS
            //////////////////////////////////////////////////////////////////

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
                let ret := precompileCall(0, gas())
            }

            /// @notice Retrieves the highest half of the multiplication result.
            /// @param multiplicand The value to multiply.
            /// @param multiplier The multiplier.
            /// @return ret The highest half of the multiplication result.
            function getHighestHalfOfMultiplication(multiplicand, multiplier) -> ret {
                ret := verbatim_2i_1o("mul_high", multiplicand, multiplier)
            }

            /// @notice Computes the modular subtraction of two values.
            /// @param minuend The value to subtract from.
            /// @param subtrahend The value to subtract.
            /// @param modulus The modulus.
            /// @return difference The modular subtraction of the two values.
            function submod(minuend, subtrahend, modulus) -> difference {
                difference := addmod(minuend, sub(modulus, subtrahend), modulus)
            }

            /// @notice Computes an addition and checks for overflow.
            /// @param augend The value to add to.
            /// @param addend The value to add.
            /// @return sum The sum of the two values.
            /// @return overflowed True if the addition overflowed, false otherwise.
            function overflowingAdd(augend, addend) -> sum, overflowed {
                sum := add(augend, addend)
                overflowed := or(lt(sum, augend), lt(sum, addend))
            }

            // @notice Checks if a point is on the curve.
            // @dev The curve in question is the alt_bn128 curve.
            // @dev The Short Weierstrass equation of the curve is y^2 = x^3 + 3.
            // @param x The x coordinate of the point in Montgomery form.
            // @param y The y coordinate of the point in Montgomery form.
            // @return ret True if the point is on the curve, false otherwise.
            function pointIsInCurve(x, y) -> ret {
                let ySquared := montgomeryMul(y, y)
                let xSquared := montgomeryMul(x, x)
                let xQubed := montgomeryMul(xSquared, x)
                let xQubedPlusThree := addmod(xQubed, MONTGOMERY_THREE(), ALT_BN128_GROUP_ORDER())

                ret := eq(ySquared, xQubedPlusThree)
            }

            /// @notice Checks if a point is the point at infinity.
            /// @dev The point at infinity is defined as the point (0, 0).
            /// @dev See https://eips.ethereum.org/EIPS/eip-196 for further details.
            /// @param x The x coordinate of the point.
            /// @param y The y coordinate of the point.
            /// @return ret True if the point is the point at infinity, false otherwise.
            function isInfinity(x, y) -> ret {
                ret := and(iszero(x), iszero(y))
            }

            /// @notice Checks if a coordinate is on the curve group order.
            /// @dev A coordinate is on the curve group order if it is on the range [0, curveGroupOrder).
            /// @dev This check is required in the precompile specification. See https://eips.ethereum.org/EIPS/eip-196 for further details.
            /// @param coordinate The coordinate to check.
            /// @return ret True if the coordinate is in the range, false otherwise.
            function isOnGroupOrder(coordinate) -> ret {
                ret := lt(coordinate, ALT_BN128_GROUP_ORDER())
            }

            function binaryExtendedEuclideanAlgorithm(base) -> inv {
                // Precomputation of 1 << 255
                let mask := 57896044618658097711785492504343953926634992332820282019728792003956564819968
                let modulus := ALT_BN128_GROUP_ORDER()
                // modulus >> 255 == 0 -> modulus & 1 << 255 == 0
                let modulusHasSpareBits := iszero(and(modulus, mask))

                let u := base
                let v := modulus
                // Avoids unnecessary reduction step.
                let b := R2_MOD_ALT_BN128_GROUP_ORDER()
                let c := ZERO()

                for {} and(iszero(eq(u, ONE())), iszero(eq(v, ONE()))) {} {
                    for {} iszero(and(u, ONE())) {} {
                        u := shr(1, u)
                        let currentB := b
                        switch and(currentB, ONE())
                        case 0 {
                            b := shr(1, b)
                        }
                        case 1 {
                            let newB := add(b, modulus)
                            let carry := or(lt(newB, b), lt(newB, modulus))
                            b := shr(1, newB)

                            if and(iszero(modulusHasSpareBits), carry) {
                                b := or(b, mask)
                            }
                        }
                    }

                    for {} iszero(and(v, ONE())) {} {
                        v := shr(1, v)
                        let currentC := c
                        switch and(currentC, ONE())
                        case 0 {
                            c := shr(1, c)
                        }
                        case 1 {
                            let newC := add(c, modulus)
                            let carry := or(lt(newC, c), lt(newC, modulus))
                            c := shr(1, newC)

                            if and(iszero(modulusHasSpareBits), carry) {
                                c := or(c, mask)
                            }
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

                switch eq(u, ONE())
                case 0 {
                    inv := c
                }
                case 1 {
                    inv := b
                }
            }

            /// @notice Implementation of the Montgomery reduction algorithm (a.k.a. REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication//The_REDC_algorithm
            /// @param lowestHalfOfT The lowest half of the value T.
            /// @param higherHalfOfT The higher half of the value T.
            /// @return S The result of the Montgomery reduction.
            function REDC(lowestHalfOfT, higherHalfOfT) -> S {
                let q := mul(lowestHalfOfT, N_PRIME())
                let aHigh := add(higherHalfOfT, getHighestHalfOfMultiplication(q, ALT_BN128_GROUP_ORDER()))
                let aLow, overflowed := overflowingAdd(lowestHalfOfT, mul(q, ALT_BN128_GROUP_ORDER()))
                if overflowed {
                    aHigh := add(aHigh, ONE())
                }
                S := aHigh
                if iszero(lt(aHigh, ALT_BN128_GROUP_ORDER())) {
                    S := sub(aHigh, ALT_BN128_GROUP_ORDER())
                }
            }

            /// @notice Encodes a field element into the Montgomery form using the Montgomery reduction algorithm (REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication//The_REDC_algorithmfor further details on transforming a field element into the Montgomery form.
            /// @param a The field element to encode.
            /// @return ret The field element in Montgomery form.
            function intoMontgomeryForm(a) -> ret {
                let temp := mod(a, ALT_BN128_GROUP_ORDER())
                let higherHalf := getHighestHalfOfMultiplication(temp, R2_MOD_ALT_BN128_GROUP_ORDER())
                let lowestHalf := mul(temp, R2_MOD_ALT_BN128_GROUP_ORDER())
                ret := REDC(lowestHalf, higherHalf)
            }

            /// @notice Decodes a field element out of the Montgomery form using the Montgomery reduction algorithm (REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication//The_REDC_algorithm for further details on transforming a field element out of the Montgomery form.
            /// @param m The field element in Montgomery form to decode.
            /// @return ret The decoded field element.
            function outOfMontgomeryForm(m) -> ret {
                let higherHalfOf := ZERO()
                let lowestHalf := m
                ret := REDC(lowestHalf, higherHalfOf)
            }

            /// @notice Computes the Montgomery multiplication using the Montgomery reduction algorithm (REDC).
            /// @dev See https://en.wikipedia.org/wiki/Montgomery_modular_multiplication//The_REDC_algorithm for further details on the Montgomery multiplication.
            /// @param multiplicand The multiplicand in Montgomery form.
            /// @param multiplier The multiplier in Montgomery form.
            /// @return ret The result of the Montgomery multiplication.
            function montgomeryMul(multiplicand, multiplier) -> ret {
                let higherHalfOfProduct := getHighestHalfOfMultiplication(multiplicand, multiplier)
                let lowestHalfOfProduct := mul(multiplicand, multiplier)
                ret := REDC(lowestHalfOfProduct, higherHalfOfProduct)
            }

            /// @notice Computes the Montgomery modular inverse skipping the Montgomery reduction step.
            /// @dev The Montgomery reduction step is skept because a modification in the binary extended Euclidean algorithm is used to compute the modular inverse.
            /// @dev See the function `binaryExtendedEuclideanAlgorithm` for further details.
            /// @param a The field element in Montgomery form to compute the modular inverse of.
            /// @return invmod The result of the Montgomery modular inverse (in Montgomery form).
            function montgomeryModularInverse(a) -> invmod {
                invmod := binaryExtendedEuclideanAlgorithm(a)
            }

            /// @notice Computes the Montgomery division.
            /// @dev The Montgomery division is computed by multiplying the dividend with the modular inverse of the divisor.
            /// @param dividend The dividend in Montgomery form.
            /// @param divisor The divisor in Montgomery form.
            /// @return quotient The result of the Montgomery division.
            function montgomeryDiv(dividend, divisor) -> quotient {
                quotient := montgomeryMul(dividend, montgomeryModularInverse(divisor))
            }

            ////////////////////////////////////////////////////////////////
            //                      FALLBACK
            ////////////////////////////////////////////////////////////////

            // Retrieve the coordinates from the calldata
            let x1 := calldataload(0)
            let y1 := calldataload(32)
            let x2 := calldataload(64)
            let y2 := calldataload(96)

            let p1IsInfinity := isInfinity(x1, y1)
            let p2IsInfinity := isInfinity(x2, y2)

            if and(p1IsInfinity, p2IsInfinity) {
                // Infinity + Infinity = Infinity
                mstore(0, ZERO())
                mstore(32, ZERO())
                return(0, 64)
            }
            if and(p1IsInfinity, iszero(p2IsInfinity)) {
                // Infinity + P = P

                // Ensure that the coordinates are between 0 and the group order.
                if or(iszero(isOnGroupOrder(x2)), iszero(isOnGroupOrder(y2))) {
                    burnGas()
                    revert(0, 0)
                }

                let m_x2 := intoMontgomeryForm(x2)
                let m_y2 := intoMontgomeryForm(y2)

                // Ensure that the point is in the curve (Y^2 = X^3 + 3).
                if iszero(pointIsInCurve(m_x2, m_y2)) {
                    burnGas()
                    revert(0, 0)
                }

                // We just need to go into the Montgomery form to perform the
                // computations in pointIsInCurve, but we do not need to come back.

                mstore(0, x2)
                mstore(32, y2)
                return(0, 64)
            }
            if and(iszero(p1IsInfinity), p2IsInfinity) {
                // P + Infinity = P

                // Ensure that the coordinates are between 0 and the group order.
                if or(iszero(isOnGroupOrder(x1)), iszero(isOnGroupOrder(y1))) {
                    burnGas()
                    revert(0, 0)
                }

                let m_x1 := intoMontgomeryForm(x1)
                let m_y1 := intoMontgomeryForm(y1)

                // Ensure that the point is in the curve (Y^2 = X^3 + 3).
                if iszero(pointIsInCurve(m_x1, m_y1)) {
                    burnGas()
                    revert(0, 0)
                }

                // We just need to go into the Montgomery form to perform the
                // computations in pointIsInCurve, but we do not need to come back.

                mstore(0, x1)
                mstore(32, y1)
                return(0, 64)
            }

            // Ensure that the coordinates are between 0 and the group order.
            if or(iszero(isOnGroupOrder(x1)), iszero(isOnGroupOrder(y1))) {
                burnGas()
            }

            // Ensure that the coordinates are between 0 and the group order.
            if or(iszero(isOnGroupOrder(x2)), iszero(isOnGroupOrder(y2))) {
                burnGas()
            }

            // There's no need for transforming into Montgomery form
            // for this case.
            if and(eq(x1, x2), eq(submod(0, y1, ALT_BN128_GROUP_ORDER()), y2)) {
                // P + (-P) = Infinity

                let m_x1 := intoMontgomeryForm(x1)
                let m_y1 := intoMontgomeryForm(y1)
                let m_x2 := intoMontgomeryForm(x2)
                let m_y2 := intoMontgomeryForm(y2)

                // Ensure that the points are in the curve (Y^2 = X^3 + 3).
                if or(iszero(pointIsInCurve(m_x1, m_y1)), iszero(pointIsInCurve(m_x2, m_y2))) {
                    burnGas()
                    revert(0, 0)
                }

                // We just need to go into the Montgomery form to perform the
                // computations in pointIsInCurve, but we do not need to come back.

                mstore(0, ZERO())
                mstore(32, ZERO())
                return(0, 64)
            }

            if and(eq(x1, x2), and(iszero(eq(y1, y2)), iszero(eq(y1, submod(0, y2, ALT_BN128_GROUP_ORDER()))))) {
                burnGas()
            }

            if and(eq(x1, x2), eq(y1, y2)) {
                // P + P = 2P

                let x := intoMontgomeryForm(x1)
                let y := intoMontgomeryForm(y1)

                // Ensure that the points are in the curve (Y^2 = X^3 + 3).
                if iszero(pointIsInCurve(x, y)) {
                    burnGas()
                    revert(0, 0)
                }

                // (3 * x1^2 + a) / (2 * y1)
                let x1_squared := montgomeryMul(x, x)
                let slope := montgomeryDiv(addmod(x1_squared, addmod(x1_squared, x1_squared, ALT_BN128_GROUP_ORDER()), ALT_BN128_GROUP_ORDER()), addmod(y, y, ALT_BN128_GROUP_ORDER()))
                // x3 = slope^2 - 2 * x1
                let x3 := submod(montgomeryMul(slope, slope), addmod(x, x, ALT_BN128_GROUP_ORDER()), ALT_BN128_GROUP_ORDER())
                // y3 = slope * (x1 - x3) - y1
                let y3 := submod(montgomeryMul(slope, submod(x, x3, ALT_BN128_GROUP_ORDER())), y, ALT_BN128_GROUP_ORDER())

                x3 := outOfMontgomeryForm(x3)
                y3 := outOfMontgomeryForm(y3)

                mstore(0, x3)
                mstore(32, y3)
                return(0, 64)
            }

            // P1 + P2 = P3

            x1 := intoMontgomeryForm(x1)
            y1 := intoMontgomeryForm(y1)
            x2 := intoMontgomeryForm(x2)
            y2 := intoMontgomeryForm(y2)

            // Ensure that the points are in the curve (Y^2 = X^3 + 3).
            if or(iszero(pointIsInCurve(x1, y1)), iszero(pointIsInCurve(x2, y2))) {
                burnGas()
            }

            // (y2 - y1) / (x2 - x1)
            let slope := montgomeryDiv(submod(y2, y1, ALT_BN128_GROUP_ORDER()), submod(x2, x1, ALT_BN128_GROUP_ORDER()))
            // x3 = slope^2 - x1 - x2
            let x3 := submod(montgomeryMul(slope, slope), addmod(x1, x2, ALT_BN128_GROUP_ORDER()), ALT_BN128_GROUP_ORDER())
            // y3 = slope * (x1 - x3) - y1
            let y3 := submod(montgomeryMul(slope, submod(x1, x3, ALT_BN128_GROUP_ORDER())), y1, ALT_BN128_GROUP_ORDER())

            x3 := outOfMontgomeryForm(x3)
            y3 := outOfMontgomeryForm(y3)

            mstore(0, x3)
            mstore(32, y3)
            return(0, 64)
        }
    }
}

