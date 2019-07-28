pragma solidity ^0.5.0;

import "../modules/Staking.sol";

contract TestStaking is Staking {
  function setToken(address token) public {
    Staking._setToken(token);
  }

  function addStake(address staker, address funder, uint256 currentStake, uint256 amountToAdd) public {
    Staking._addStake(staker, funder, currentStake, amountToAdd);
  }

  function takeStake(address staker, address recipient, uint256 currentStake, uint256 amountToTake) public {
    Staking._takeStake(staker, recipient, currentStake, amountToTake);
  }

  function takeFullStake(address staker, address recipient) public {
    Staking._takeFullStake(staker, recipient);
  }

  function burnStake(address staker, uint256 currentStake, uint256 amountToBurn) public {
    Staking._burnStake(staker, currentStake, amountToBurn);
  }

  function burnFullStake(address staker) public {
    Staking._burnFullStake(staker);
  }
}
