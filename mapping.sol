// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;
//本文件讲mapping  等于python的字典(dict)
//solidity mapping 不能遍历 无法获取长度

contract Mapping{
    mapping (address => uint256) public balanceOf;
    //创建一个mapping 设定字典的key=address类型，value=uint256
    //例子：{"0x0000000000":123}

    function getbalnance(address addr) public view returns(uint256){
        return balanceOf[addr];
    }


    function setgetbalnance(address addr, uint256 amount) public{
        balanceOf[addr] = balanceOf[addr] + amount;
    } 

    function remove(address addr) public{
        delete balanceOf[addr];
    }

}