// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ExternalLib} from "./ExternalLib.sol";

struct Data {
    uint256 number;
}

contract Counter {
    Data public data;

    function setNumber(uint256 newNumber) public {
        data.number = newNumber;
    }

    function increment() public {
        ExternalLib.increment(data);
    }
}
