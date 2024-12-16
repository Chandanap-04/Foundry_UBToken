// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/UBToken.sol";

contract UBTokenDeploy is Script {
    function run() public {
        uint256 initialSupply = 1_000_000 * 10 ** 18; // 1,000,000 tokens with 18 decimals
        address recipient = 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc;

        vm.startBroadcast();

        // Deploy the UBToken contract
        UBToken token = new UBToken(initialSupply);

        // Transfer 100 tokens to recipient
        token.transfer(recipient, 100 * 10 ** 18);

        vm.stopBroadcast();
    }
}
