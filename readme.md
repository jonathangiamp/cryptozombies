# CryptoZombies

Cryptozombie is a dApp hosted into the Ethereum blockchain, it's an educational game project written in solidity.
With Cryptozombies, create your own zombie and fight against other zombies to level up! Do you want an army? No problem, find a cute Cryptokitty and eat it to create new zombie based on kitty's DNA!
Each zombie will be unique so don't waste time, let's create yours!

## How to run it locally

### Prerequisites

1. You must have **brew** installed. To install it, copy this curl within your terminal

```
/usr/bin/ruby -e "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. You must have **node** and **npm** _(or yarn)_ installed. As we installed brew in the previous, we can use it to install node.

```
brew install node
```

3. You must have **bash** installed. As we installed brew in the previous, we can use it to install node.

```
brew install bash
```

### Intallation

1. Installing Geth

Geth is the official Go implementation of the Ethereum protocol. You can find more details [here](https://geth.ethereum.org/docs/).

First, add ethereum to the list of formulae that brew tracks.

```
brew tap ethereum/ethereum
```

Then, install ethereum

```
brew install ethereum
```

2. Install Truffle

Truffle is a sweet tools for smart contracts. It will allow us to create a project, compile it and run it.

You could install it via npm or yarn.

```
npm install -g truffle
```

```
yarn global add truffle
```

3. Installing Solidity

Solidity is an object-oriented, high-level language for implementing smart contracts. It's the language I used to create this project.
Here we'll use `solc` which is the JavaScript bindings for the Solidity compiler.

You could install it via npm or yarn.

```
npm install -g solc
```

```
yarn global add solc
```

### Setup

1. First, you have to init your local/private blockchain. Run _init-block.sh_ script with bash

```
bash scripts/init-block.sh
```

2. Then, we have to initiate and run your private Ethereum Blockchain. Go to a new tab of your CLI and run _run-blockchain.sh_ script with Bash.

```
bash scripts/run-blockchain.sh
```

3. Now, we have to connect your new private Ethereum blockchain to the Geth Javascript console to be able to interact with it. Go to a new tab of your CLI and run _run-js-console.sh_ script with Bash.

```
bash scripts/run-js-console.sh
```

### Create an account

Now that you are connected to your blochain with Geth Javascript console, you'll be able to create an account and start to mine some coin!

Run this command to create a new account

```
personal.newAccount("<passphrase_you_choose>")
```

Et voilà! You have your first account. Let's start to mine some coins with this command

```
miner.start()
```

You'll see some logs in your tab where your blockchain is running. Wait a moment and run this command to see how many coin you mined

```
web3.fromWei(eth.getBalance(eth.coinbase), "ether")
```

If you want to stop to mine you could run this command. However, to publish the smart contract in your private blockchain you'll need to mine coin at the same time so I encourage you to continue to mine until you'll publish the contract

```
miner.stop()
```

### Deploy smart contract

1. First of all, you have to unlock your account to be able to deploy your contract. **WARNING**: Unlock an account is an unsecure/dangerous operation. It's only a develop command, never use it in production!

```
personal.unlockAccount(web3.eth.coinbase, "<passphrase_used_before", 15000)
```

2. Be sure that you continue to mine.

3. Let's compile contract

```
truffle compile
```

4. Finally, migrate it to your local blockchain to be able to play with it!

```
truffle migrate
```

TaDa! After few seconds, your contract is migrated to your local blockchain!

5. You could now interact with the contract via truffle console.

```
truffle console
```

6. Within the truffle console, run the following commands to init your contract and start to play with it.

```
var dApp
ZombieOwnership.deployed().then(function(instance) { dApp = instance; })
dApp // You contract's methods are listed.
```

7. You can now read contracts in contracts directoy and start to play with it. Let's create our first Zombie and eat some CryptoKitties to build an army!
