/**
 *Submitted for verification at Etherscan.io on 2016-04-06
*/

contract ResetPonzi {
    
    struct Person {
      address addr;
    }
    
    struct NiceGuy {
      address addr2;
    }
    
    Person[] public persons;
    NiceGuy[] public niceGuys;
    
    uint public payoutIdx = 0;
    uint public currentNiceGuyIdx = 0;
    uint public investor = 0;
    
    address public currentNiceGuy;
    
    
    function ResetPonzi() {
        currentNiceGuy = msg.sender;
    }
    
    
    function() {
        enter();
    }
    
    
    function enter() {
        
        uint ngidx = niceGuys.length;
        uint idx = persons.length;
        
        if (msg.value != 0.9 ether) {
            throw;
        }
        
        if (investor > 8) {
            niceGuys.length += 1;
            niceGuys[ngidx].addr2 = msg.sender;
            if (investor == 10) {
                currentNiceGuy = niceGuys[currentNiceGuyIdx].addr2;
                currentNiceGuyIdx += 1;
            }
        }
        
        if (investor < 9) {
            persons.length += 1;
            persons[idx].addr = msg.sender;
        }
        
        investor += 1;
        if (investor == 11) {
            investor = 0;
        }
        
        if (idx != 0) {
            currentNiceGuy.send(0.1 ether);
        }
        
        while (this.balance > 1 ether) {
            persons[payoutIdx].addr.send(1 ether);
            payoutIdx += 1;
    }
  }
}