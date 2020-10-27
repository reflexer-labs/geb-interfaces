# geb-interfaces

Provides programmatic interfaces for GEB core contracts.

Import all GEB abstract contracts

```
import "geb-interfaces/Interfaces.sol";
```

Import multiple contracts

```
import { SAFEEngineAbstract, AccountingEngineAbstract } from "geb-interfaces/Interfaces.sol";
```

Import individual contracts

```
import "lib/geb-interfaces/src/mrs/SAFEEngineAbstract.sol";
```


## Example Usage


```
import { SAFEEngineAbstract } from "./Interfaces.sol";

pragma solidity ^0.6.7;

abstract contract Testerface {

    SAFEEngineAbstract _safeEngine;

    constructor() virtual public {
        _safeEngine = SAFEEngineAbstract(0xbA987bDB501d131f766fEe8180Da5d81b34b69d9);
    }

    function viewDebt() virtual public view returns (uint256) {
        return _safeEngine.globalDebt();
    }    
}
```
