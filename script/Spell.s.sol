// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {Spell} from "../src/Spell.sol";

contract DeploySpell is Script {
    function run() public {
        vm.startBroadcast();

        new Spell(200);

        vm.stopBroadcast();
    }
}
