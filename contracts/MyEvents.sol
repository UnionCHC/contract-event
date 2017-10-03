pragma solidity ^0.4.4;

contract MyEvents {

  uint eventNum;
  uint public value1;
  uint public value2;

  event MyEvent(address indexed _from, uint _value);
  event Value1Event(address indexed _from, uint _value);
  event Value2Event(address indexed _from, uint _value);

  function MyEvents() { }

  function sendEvent() returns (uint) {
    MyEvent(msg.sender, ++eventNum);
    return eventNum;
  }

  function incValue1() {
    value1++;
    Value1Event(msg.sender, value1);
  }

  function incValue2() {
    value2++;
    Value2Event(msg.sender, value2);
  }

}
