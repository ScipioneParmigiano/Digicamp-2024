//SPDX-License-Identifier: MIT
pragma solidity <0.7.2;

contract Deposit {
    mapping(address => uint8) balances;

    function deposit() public payable {
        balances[msg.sender] += uint8(msg.value);
    } 

    function doThings() public view {
        require(balances[msg.sender] < 20);

        // do things not accessible to user whose balance is bigger than 250 wei     
    }

    function returnBalance() public view returns(uint8){
        return balances[msg.sender];
    }
}