// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {Trebuchet} from "../src/Trebuchet.sol";

contract DeployTrebuchet is Script {
    function run() public {
        vm.startBroadcast();

        new Trebuchet(200, msg.sender);

        vm.stopBroadcast();
    }
}
