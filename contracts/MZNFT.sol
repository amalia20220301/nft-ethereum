//Contract based on [https://docs.openzeppelin.com/contracts/3.x/erc721](https://docs.openzeppelin.com/contracts/3.x/erc721)
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// implement ECR271 standard. (a valid NFT must implement all the method of ERC721 standard https://eips.ethereum.org/EIPS/eip-721)
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// a counter can only increase / decrease by one.
import "@openzeppelin/contracts/utils/Counters.sol";
// setup access control(https://docs.openzeppelin.com/contracts/3.x/access-control) on smart contract. To make sure only the owner can mint the NFT.
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MZNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("MZNFT", "NFT") {}
    // recipient: the address which will receive the NFT
    // tokenURI: point to a json file to describe the NFT's metadata
    function mintNFT(address recipient, string memory tokenURI)
        public onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
