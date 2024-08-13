// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Data} from "./Counter.sol";

library ExternalLib {
    function increment(Data storage data) external {
        data.number++;
    }
}
