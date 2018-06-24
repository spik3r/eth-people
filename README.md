# Basic Solidity app

#### Requirements:
- npm
- Truffle
     - npm install -g truffle
- Metamask
     - Click Import Existing DEN.
     - In the box marked Wallet Seed, enter the mnemonic that is displayed in Ganache.
     - Connect MetaMask to the blockchain created by Ganache. Click the menu that shows "Main Network" and select Custom RPC.
     - In the box titled "New RPC URL" enter http://127.0.0.1:7545

- Ganache
     - https://truffleframework.com/ganache/

#### Truffle commands
```
truffle compile
truffle migrate
truffle networks to get address eg: 0x13015caa579df739c532f944b3eddfdf7527594d
```

#### Calling contract from console
```
truffle console

Person.at('0x13015caa579df739c532f944b3eddfdf7527594d').createPerson("Kai", 26);
Person.at('0x13015caa579df739c532f944b3eddfdf7527594d').getPerson(1);
```

#### Instructions:
- run: ```truffle compile
        truffle migrate
        truffle networks```
- copy the address from truffle networks to the constant field: `CONTRACT_NETWORK`

#### problems:
- Delete everything in the build folder when redeploying or changingcontracts
- replace the