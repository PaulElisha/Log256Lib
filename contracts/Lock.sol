// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

// Uncomment this line to use console.log
// import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

library LogarithmLibrary {
    function performRounding(uint256 value, Rounding rounding) internal pure returns (uint256) {
        return log256(value, rounding);
    }

    /* to perform precise calculations involving token balances, 
       transaction fees, or token supply calculations.

         used in financial modeling to perform precise calculations involving large number.

        for data analysis purposes in business and finance.
    */

    function calculatePrecision(uint256 value) internal pure returns (uint256) {
        return log256(value, Rounding.Down);
    }

    function analyzeData(uint256[] memory values) internal pure returns (uint256[] memory) {
        uint256[] memory logarithms = new uint256[](values.length);
        for (uint256 i = 0; i < values.length; i++) {
            logarithms[i] = log256(values[i], Rounding.Up);
        }
        return logarithms;
    }

    function calculateExponential(uint256 base, uint256 exponent) internal pure returns (uint256) {
        uint256 result = base ** exponent;
        uint256 logarithm = log256(result, Rounding.Down);
        return logarithm;
    }

    // for compound interest, asset valuation and risk assessment. 

    function calculateCompoundInterest(uint256 principal, uint256 interestRate, uint256 periods) internal pure returns (uint256) {
        uint256 base = principal * (1 + interestRate);
        return calculateExponential(base, periods);
    }


} 