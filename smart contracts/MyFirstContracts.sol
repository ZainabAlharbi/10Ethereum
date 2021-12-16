// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract empty {  
    /*TIS IS JUST FOR FUN
    */

}


contract HelloWorld {
    function get()public pure returns (string memory){
        return "Hello Contracts";
    }
}



contract bank2{
    uint bal;
    address owner;
    constructor() public{
        bal=1;
    }
    function getBalance() view public returns(uint) {
        return bal;

    }
    function withdraw(uint amt) public {
        require(msg.sender == owner,"you don't own this bank");
        require(amt <= bal,"you don't have that amount");
        require(amt > 0 ,"No negative num");

        bal = bal-amt;
    }
    function deposit(uint amt) public {
        bal = bal+amt;
    }
}


