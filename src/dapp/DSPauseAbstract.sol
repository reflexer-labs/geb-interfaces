pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-pause/pause.sol
abstract contract DSPauseAbstract {
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
    function setDelay(uint256) virtual public;
    function scheduledTransactions(bytes32) virtual public view returns (bool);
    function proxy() virtual public view returns (address);
    function delay() virtual public view returns (uint256);
    function currentlyScheduledTransactions() virtual public view returns (uint256);
    function EXEC_TIME() virtual public view returns (uint256);
    function maxScheduledTransactions() virtual public view returns (uint256);
    function MAX_DELAY() virtual public view returns (uint256);
    function DS_PAUSE_TYPE() virtual public view returns (uint256);
    function scheduleTransaction(address, bytes32, bytes memory, uint256, string memory) virtual public;
    function scheduleTransaction(address, bytes32, bytes memory, uint256) virtual public;
    function attachTransactionDescription(address, bytes32, bytes memory, uint256, string memory) virtual public;
    function abandonTransaction(address, bytes32, bytes memory, uint256) virtual public;
    function executeTransaction(address, bytes32, bytes memory, uint256) virtual public returns (bytes memory);
}
