// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        uint256 pk = vm.promptSecretUint("Enter the private key");

        vm.startBroadcast(pk);
        counter = new Counter();
        vm.stopBroadcast();
    }
}
