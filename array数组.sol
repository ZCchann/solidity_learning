// SPDX-License-Identifil: MIT

//本章节讲数组
//等于python的List

contract Array{
    uint256[] public arr;  //定义一个全局变量arr 类型为数组
    uint256[] public arr2;
    uint256[10] public arr3;  //定义一个长度为10位的数组

    function getArr() public view returns(uint256[] memory) {
        return arr2;
    }

    function push(uint256 data) public{  //push函数 向数组内添加内容(等于Python list.add(data))
        arr.push(data);
    }

    function pop() public{  //pop函数 删除数组内最后一个内容(等于python list.pop())
        arr.pop();
    }

    function length() public view returns(uint256){ //length函数 计算数组内的元素数量（长度）(等于python len(list))
        return arr.length;
    }

    function remove(uint256 data) public{
        //将数组内的指定位置内容清除，但不改变数组长度
        //例：数组a 内容为[1,2,3]
        //执行remove[1]后 内容为[1,0,3]
        delete arr[data];
    }

}