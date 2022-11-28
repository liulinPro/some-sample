// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract D {
    function ifElseTest(uint256 _number) public pure returns (bool, bool) {
        if (_number == 0) {
            return (true, true);
        } else {
            return (false, false);
        }
    }

    function whileTest() public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        while (i <= 10) {
            sum += i;
            i++;
        }
        return sum;
    }

    function doWhileTest() public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        do {
            sum += i;
            i++;
        }
        while (i < 10);
        return (sum);
    }

    function ternaryTets(uint256 x, uint256 y) public pure returns (uint256) {
        return x > y ? x : y;
    }

    // error j==-1 会报错
    function insertionSortWrong(uint256[] memory a)
    public
    pure
    returns (uint256[] memory)
    {
        for (uint256 i = 1; i < a.length; i++) {
            uint256 temp = a[i];
            uint256 j = i - 1;
            while ((j >= 0) && (temp < a[j])) {
                a[j + 1] = a[j];
                j--;
            }
            a[j + 1] = temp;
        }
        return (a);
    }

    // 插入排序 正确版
    function insertionSort(uint256[] memory a)
    public
    pure
    returns (uint256[] memory)
    {
        // note that uint can not take negative value
        for (uint256 i = 1; i < a.length; i++) {
            uint256 temp = a[i];
            uint256 j = i;
            while ((j >= 1) && (temp < a[j - 1])) {
                a[j] = a[j - 1];
                j--;
            }
            a[j] = temp;
            //
        }
        return (a);
    }
}
