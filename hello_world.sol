// SPDX-License-Identifil: MIT

contract HelloWorld{
    string public hello = "Hello World";

    function helloworld() public view returns(string memory){
        return hello;
    }

}