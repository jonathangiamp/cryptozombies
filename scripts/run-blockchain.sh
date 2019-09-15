#!/bin/bash

# @dev be sure to create your private blockchain with `./init-block.sh` before run this command
# Run private/local Ethereum blockchain when your blockchain is created
geth --port 3000 --networkid 62343 --nodiscover --datadir=./blkchain --maxpeers=0  --rpc --rpcport 8543 --rpcaddr 127.0.0.1 --rpccorsdomain "*" --rpcapi "eth,net,web3,personal,miner" --allow-insecure-unlock