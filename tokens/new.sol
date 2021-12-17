// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;



import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC20/ERC20.sol";


contract vlibrary is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol){}


    function giveMeTokens(uint token_count) public {
           _mint(msg.sender, token_count * (10**18));
      }




}
