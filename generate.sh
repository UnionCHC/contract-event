#!/bin/sh

solc ./contracts/MyEvents.sol --bin --abi --optimize --overwrite -o ./build/out/
web3j solidity generate ./build/out/MyEvents.bin ./build/out/MyEvents.abi -o ./build/java/ -p org.lexap.events.contract
