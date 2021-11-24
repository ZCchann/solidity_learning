// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//本文讲send transfer

contract Sendeth{

    function transfer(address payable _to) public payable {
        //transfer函数 向_to的地址发送一笔转账
        //不建议使用 不能指定gas用量
        _to.transfer(msg.value);
    }

    function send(address payable _to) public payable {
        //send函数 向_to的地址发送一笔转账 可以定义布尔值
        //不建议使用 不能指定gas用量
        bool sent = _to.send(msg.value);
        require(sent,"Failed to send eth");
    }

    function call(address payable _to) public payable {
        //call
        //建议使用此函数
        (bool sent, bytes memory data) = _to.call{value:msg.value}("");
        require(sent,"Failed to send eth");
    }

}