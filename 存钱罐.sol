// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 < 0.9.0;

contract Bank{

    receive() external payable{} //允许向此合约转账

    function getmybalance() public view returns(uint){
        return address(this).balance;   //读取本合约内的余额
    }

    function sendETH() payable external {}  //向此合约发送eth

    function getETH(uint256 _vaule) public{  //从合约向请求的地址转账
        if(getmybalance() >= _vaule){  // 判断余额是否大于或等于请求的金额
            payable(msg.sender).transfer(_vaule);   // 判断通过 发送金额
        }
    }
}