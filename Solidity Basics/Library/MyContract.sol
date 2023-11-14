// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import {SafeMath} from "./SafeMath.sol";

contract MyContract {
    
    using SafeMath for uint256;
    uint256 public value;

    function addition(uint256 _value1, uint256 _value2) public {
        value = _value1.add(_value2);
    }

    function subtraction(uint256 _value1, uint256 _value2) public {
        value = _value1.sub(_value2);
    }

    function multiplication(uint256 _value1, uint256 _value2) public {
        value = _value1.mul(_value2);
    }

    function division(uint256 _value1, uint256 _value2) public {
        value = _value1.div(_value2);
    }
}