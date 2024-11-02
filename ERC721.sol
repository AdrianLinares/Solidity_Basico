// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
// 0x6a1965D8d74B35431D21DBf1aC2c42C5204Edbb1 minteado
// 0x4db0411d45222e531C84a707c74D471C73953e3f
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact adrianlinares246@gmail.com
contract SCat1 is ERC721, Ownable {
    uint256 private _nextTokenId;

    constructor(address initialOwner)
        ERC721("SCat1", "CAT")
        Ownable(initialOwner)
    {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://gateway.lighthouse.storage/ipfs/bafkreidjtxt2orr3kbcgvzho3dzjuyquvstjxwubgapwyjn6sfhgo2a7ai";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}
