// SPDX-License-Identifier: MIT   这行定义了开源协议
//本文件讲解在同一SOL文件内 合约调用合约

pragma solidity  >=0.7.0 <0.9.0; //定义版本号

contract Get{
    //创建一个合约
    uint public value;
    uint public x;

    function getbalance() public view{
        address(this).balance;
    }

    function setX(uint _x) public returns (uint){
        x = _x;
        return x;
    }

    function setXandSendEther(uint _x) public payable returns(uint,uint){
        x = _x;
        value = msg.value;
        return(x,value);
    }
}

contract Send{
    //方法1 创建函数 定义第一个函数的类型为GET合约，传入的值为GET合约的地址
    //callSetx(Get _callee, uint256 _x) 中
    //Get 为上文的contract name  _x为目标函数所需要传入的变量
    function callSetx(Get _callee, uint256 _x) public{
        //调用合约GET的setX函数
        _callee.setX(_x);
    }
    //方法2 创建函数 定义需要传入的参数
    function callSetxaddr(address _addr, uint256 _x) public{
        //定义一个变量"Caller" 变量类型为合约GET 变量为GET的合约地址
        Get Caller = Get(_addr);
        //调用合约GET的setX函数
        Caller.setX(_x);
    }
    //带金额发送
    function callsetXandSendEther(address _addr, uint256 _x) payable public returns(uint,uint){
        //定义一个变量"Caller" 变量类型为合约GET 变量为GET的合约地址
        Get Caller = Get(_addr);
        //对端函数所需要传入的值
        (uint256 x, uint256 value) = Caller.setXandSendEther{value: msg.value}(_x);
    }
}