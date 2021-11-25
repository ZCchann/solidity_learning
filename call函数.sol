// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

contract A{
    event Received(address caller,uint256 amout, string msg);

    function getbalance() public view returns(uint256) {
        return address(this).balance;
    }

    function foo(string memory _msg, uint256 _x) public payable returns(uint256) {
        emit Received(msg.sender, msg.value, _msg);
        return _x + 1;
    }

}

contract Caller{
    event Re(bool success, bytes data);
    function callFoo(address payable _addr) public payable {
        //call函数 value为传入的金额，gas可选 指最高限制使用gas量
        (bool success,bytes memory data) = _addr.call{value:msg.value, gas: 100000}(
            /**传入ABI信息 不能传入空格
            * 传入的内容翻译：
            * foo(string,uint256) 指对象合约的函数foo，括号内为传入的对象类型
            * "call foo", 123456 为传入的变量值
            */
            abi.encodeWithSignature("foo(string,uint256)", "call foo", 123456)
        );
        emit Re(success, data);
    }

}