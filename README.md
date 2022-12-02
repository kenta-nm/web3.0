#### web3.0 Project by To-Ken Team###
####Project Objectivew####
Explore Web 3.0 system architecture
####Project Scopew####
Create and Deploy ERC20 and ERC721 on Blockchain Test Network by using cutting-edge system architecture
#####Coution#####
For Blockchain technical attributes, it should be impossible for other people to redo and replicate the following same activity. 
#####Services & System Componetns#####
0. SPDX License: MIT  License <https://spdx.org/licenses/MIT.html>
1.ERC721 Creation and Deployment Environment:  Remix <https://remix.run/> 
  *Online base development environment based on solidity code
  *It is possible to clone files from GitHub via API authorization
  *Final codes have been uploaded to my GitHub repository <https://github.com/kenta-nm/web3.0>
2. Import Source ERC721 Base Libraries:  OpenZeppelin <https://www.openzeppelin.com/>
  *Libraries:
    - ERC721.sol: ERC721 standard requirements customized as MIT License  
    - Ownable.sol: To regulate calls outside of owner authorization
    - ERC721URIStorage.sol: To use IPFS path (to connect JSON metadata and image files on NFT Storage 
    - ERC721Pausable.sol: To use a function that regulates NFT deployment status on Blockchain
    - Counters.sol: To use a function that increments the number of TokenId issue
    - Strings.sol: To use string code on Remix
3. Blockchain Test Network: Goerli Testnet <https://goerli.net/>
4. Monitor Blockchain Transaction and Contract Owner Transfer:  Etherscan <https://etherscan.io/>
5. Hold Contract Metadata and Image files by using IPFS (Decentralized File System): NFT Storage < https://nft.storage/files/>
  *Uploaded Files
    - NFT metadata files based on JSON <ipfs://bafybeigyod7ldrnytkzrw45gw2tjksdct6qaxnsc7jdihegpnk2kskpt7a> *These files are the same as my Git Hub JSON files
    - NFT image files based < ipfs://bafybeicxthc2kuogbhe52hv3jhjoulotkqhg7fg3i2aty2cg7x5vrnrotm>T *These files are the same as my Git Hub files
6. Market Place Testnet: Open Sea <https://testnets.opensea.io/>
7. Wallet App, Monitor and Manage Accounts, Transactions, Contracts, Currency, and Orchestrate all of the information across services: Metamask <https://metamask.io/>
#####Referece (How to)#####
1.Solidity Sorce Coede: <https://docs.soliditylang.org/en/v0.8.14/layout-of-source-files.html#spdx-license-identifier>*GitHub ERC: Non-fungible Token Standard #721: <https://github.com/ethereum/eips/issues/721>
2.Ethereum Improvement Proposals: <https://eips.ethereum.org/EIPS/eip-721#specification>
3.EIP Purpose and Guidelines: <https://eips.ethereum.org/EIPS/eip-1>
4. Ethereum Developer Portal: <https://ethereum.org/ja/developers/docs/smart-contracts/>
5. Ethereum Graphical Address: <https://www.royalfork.org/2017/12/10/eth-graphical-address/>
6. Open Zeppelin Libraries Docs: <https://docs.openzeppelin.com/contracts/4.x/>
7. Open Sea Developers to connect Metamask: <https://docs.opensea.io/docs/metadata-standards#metadata-structure>
8. Metamask Docs: <https://docs.metamask.io/guide/>
9. Introduction NFT Storage: <https://filecoin.io/blog/posts/introducing-nft.storage-free-decentralized-storage-for-nfts/>
