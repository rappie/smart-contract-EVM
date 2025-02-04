/*
    Copyright 2022 JOJO Exchange
    SPDX-License-Identifier: Apache-2.0
    ONLY FOR TEST
    DO NOT DEPLOY IN PRODUCTION ENV
*/

pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestERC20 is ERC20 {
    uint8 _decimals_;

    constructor(string memory name_, string memory symbol_, uint8 decimals_)
        ERC20(name_, symbol_)
    {
        _decimals_ = decimals_;
    }

    function decimals() public view override returns(uint8){
        return _decimals_;
    }

    function mint(address[] calldata to, uint256[] calldata amount) external {
        for (uint256 i = 0; i < to.length; i++) {
            _mint(to[i], amount[i]);
        }
    }
}
