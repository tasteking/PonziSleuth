/**
 *Submitted for verification at Etherscan.io on 2016-11-16
*/

pragma solidity ^0.4.0;



library TokenEventLib {
    /*
     * When underlying solidity issue is fixed this library will not be needed.
     * https://github.com/ethereum/solidity/issues/1215
     */
    event Transfer(address indexed _from,
                   address indexed _to,
                   bytes32 indexed _tokenID);
    event Approval(address indexed _owner,
                   address indexed _spender,
                   bytes32 indexed _tokenID);

    function _Transfer(address _from, address _to, bytes32 _tokenID) public {
        Transfer(_from, _to, _tokenID);
    }

    function _Approval(address _owner, address _spender, bytes32 _tokenID) public {
        Approval(_owner, _spender, _tokenID);
    }
}