// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "@openzeppelin/contracts@4.6.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.6.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.6.0/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@4.6.0/token/ERC721/extensions/ERC721Pausable.sol";
import "@openzeppelin/contracts@4.6.0/utils/Counters.sol";
import "@openzeppelin/contracts@4.6.0/utils/Strings.sol";


contract MITNFT is ERC721Pausable, ERC721URIStorage, Ownable {

     /**
     * @dev
     * _tokenIds = Available every Counters functions
     */ 

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    /**
     * @dev
     * record who set what kind of token Id and uri when uri setting 
     */ 


    event TokenURIChanged(address indexed sender, uint256 indexed tokenID, string uri);

    constructor() ERC721("MITNFT", "MIT") {}

     /**
     * @dev
     * - it is possible only for deployed address in this contras to use mint, only owner
     * - tokenId increment = _tokenIds.increment();
     * - nftMint Function to token ID    
     * - set uri when mint execute _setTokenURI()
     * - Event -> emit -> tokenURIChanged
     */ 
    function nftMint() public onlyOwner whenNotPaused(){
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _mint(_msgSender(), newTokenId);

        string memory jsonFile = string(abi.encodePacked('metadata', Strings.toString(newTokenId), '.json'));
        _setTokenURI(newTokenId, jsonFile);

        emit TokenURIChanged(_msgSender(), newTokenId, jsonFile);
    }
    
    /**
     * @dev
     * - uri prefix setting
     */
    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://bafybeigyod7ldrnytkzrw45gw2tjksdct6qaxnsc7jdihegpnk2kskpt7a/";
        }

    /**
     * @dev
     * - NFT Pause
     */
    function pause() public onlyOwner{
        _pause();

    }

    /**
     * @dev
     * - NFT Unpause
     */
    function unpause() public onlyOwner{
        _unpause();

    }


    /**
     * @dev
     * - Pausable Override
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override (ERC721, ERC721Pausable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }
    /**
     * @dev
     * - Burn Override
     */
    function _burn(uint256 tokenId) internal override (ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }
    /**
     * @dev
     * - token URI Override
     */

    function tokenURI(uint256 tokenId) public view override (ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }
}