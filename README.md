# NFT

[provider account link](https://dashboard.alchemyapi.io/)


## Setup

```shell
yarn add hardhat
npx hardhat
npx hardhat --network goerli run scripts/deploy.js
```

- contract deployed: https://goerli.etherscan.io/address/0xd5F98c7F16b82d46d33EFF78F2920864671Ed6A2
- alchemy dashboard: https://dashboard.alchemyapi.io/explorer?time_min=1655540384454&time_range_preset=last5Minutes
- contract account token list: https://goerli.etherscan.io/token/0xd5f98c7f16b82d46d33eff78f2920864671ed6a2
- contract account token holder: https://goerli.etherscan.io/token/0xd5F98c7F16b82d46d33EFF78F2920864671Ed6A2?a=0xe10aa6471b33845fae88dd7bbeb63c250da3a639
- reference: https://ethereum.org/en/developers/tutorials/how-to-mint-an-nft/

## Mint NFT

### Using Pinata to store NFT on IPFS

https://app.pinata.cloud/pinmanager

```shell
node scripts/mint-nft.js
```

Mempool Tx: https://dashboard.alchemyapi.io/mempool/eth-goerli/tx/0x2846125253cd7bc2a38755a893184525ba94b83b8ffefcd7a9a2de1ef450174e
Etherscan Tx: https://goerli.etherscan.io/tx/0x2846125253cd7bc2a38755a893184525ba94b83b8ffefcd7a9a2de1ef450174e
