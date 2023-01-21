// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Datas {
    struct Data {
        string text;
        bool completed;
    }

    // An array of 'Data' structs
    Data[] public datas;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        datas.push(Data(_text, false));

        // key value mapping
        datas.push(({text: _text, completed: false}));

        // initialize an empty struct and then update it
        Data memory data;
        data.text = _text;
        // data.completed initialized to false

        datas.push(todo);
    }

    // Solidity automatically created a getter for 'datas' so
    
    function get(uint _index) public view returns (string memory text, bool completed) {
        Data storage data = datas[_index];
        return (data.text, data.completed);
    }

    // update text
    function updateText(uint _index, string calldata _text) public {
        Data storage data = datas[_index];
        data.text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Data storage data = datas[_index];
        data.completed = !data.completed;
    }
}