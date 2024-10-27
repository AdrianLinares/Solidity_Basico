// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
// 0xEe762682a3Cb6BCfa3Bfa9b0C3289bbD08CA457B
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @custom:security-contact jalinaresm@ut.edu.co
contract HeavyMetalToken is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Heavy Metal Token", "HMT")
        Ownable(initialOwner)
        ERC20Permit("Heavy Metal Token")
    {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}