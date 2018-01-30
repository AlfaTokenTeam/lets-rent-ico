pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract LetsRent is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function LetsRent(address _owner)  UpgradeableToken(_owner) {
    name = "LetsRent";
    symbol = "RNT";
    totalSupply = 50000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}