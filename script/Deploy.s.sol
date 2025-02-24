// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {BatteringRam} from "../src/BatteringRam.sol";
import {Catapult} from "../src/Catapult.sol";
import {Trebuchet} from "../src/Trebuchet.sol";
import {CatapultNFT} from "../src/CatapultNFT.sol";

contract DeploySiege is Script {
    function run() public {
        vm.startBroadcast();

        new CatapultNFT("https://ipfs.io/ipfs/QmUCd8sGk4uVhGFfXX5aixNod3Eky8kD4Cvjo25UDnhPrQ");
        new BatteringRam(50);
        new Catapult(100);
        new Trebuchet(200, msg.sender);

        vm.stopBroadcast();
    }
}
