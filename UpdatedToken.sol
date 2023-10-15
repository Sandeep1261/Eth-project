// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract UpdatedToken {

    // Public variables here

    string public tokenTitle = "UpdatedCoin";
    string public tokenSymbol = "UC";
    uint public totalSupplyAmount = 0;

    // Mapping variable here

    mapping(address => uint) public accountBalances;

    // Mint function

    function mintAmount(address _account, uint _value) public {
        totalSupplyAmount += _value;
        accountBalances[_account] += _value;
    }

    // Burn function

    function burnAmount(address _account, uint _value) public {
        if (accountBalances[_account] >= _value) {
            totalSupplyAmount -= _value;
            accountBalances[_account] -= _value;
        }
    }
}
