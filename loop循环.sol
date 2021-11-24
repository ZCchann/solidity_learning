// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//本文件讲循环

contract Loop{
    uint public count;  //定义一个全局变量

    function forloop(uint n) public{
        //for loop
        for (uint i = 0;  //初始值 i=0
            i < n;  // i小于N的时候 i +1
            i++){
                count +=1;
                if (i > 50){
                    break;
                }
            }
    }

    function whileloop(uint n) public{
        uint i;
        while (i < n){
            i++;
        }
        count = i;
    }

    function clean() public{
        count = 0;

    }

}