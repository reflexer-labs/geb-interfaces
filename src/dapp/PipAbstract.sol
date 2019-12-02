pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-value/blob/master/src/value.sol
contract PipAbstract {
    // bool public has;
    function has() public returns (bool);
    // bytes32 public val;
    function val() public returns (bytes32);
    function peek() public view returns (bytes32, bool);
    function read() public view returns (bytes32);
    function poke(bytes32) public;
    function void() public;
}