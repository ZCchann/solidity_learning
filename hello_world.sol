// SPDX-License-Identifier: MIT   这行定义了开源协议
pragma solidity  >=0.7.0 <0.9.0; //定义版本号

contract HelloWorld{   //创建合约 HelloWorld   类似于python的class HelloWorld:
    string public hello = "Hello World";  //定义全局变量 hello 等于python的 hello = str("Hello World")

    function helloworld() public view returns(string memory){
        //定义一个function 等于python的def helloworld() 
        //与python相比，需要定义return的值类型 比如本案例定义了返回的值为string
        //public指此事件在外部可被调用，vier指本事件为只读
        return hello;
    }

}