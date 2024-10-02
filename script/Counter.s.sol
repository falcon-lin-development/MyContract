// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract DeployMyContract is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy your contract
        Counter myContract = new Counter();

        console.log("MyContract deployed at:", address(myContract));

        vm.stopBroadcast();
    }
}