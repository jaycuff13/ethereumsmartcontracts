pragma solidity ^0.8.0; 


contract HouseSale {
    
    address payable _BuyerAddress;
    address payable _Seller;
    address payable _Agent;
    
    struct Home{
        uint _priceinBUSD;
        address _owner;
        bool _homeforsale; 
        
    }
    
    Home[1] HomeDB;
    
    modifier SellerOnly() {
        require [msg.sender == _Seller];
        _;
    }   
    // set price of house 
    
    function setPriceofHouse(uint8 _home, uint256 _priceinBUSD) SellerOnly public {
        HomeDB[_home].priceinBUSD;
    }
    
    // buyer purchase home 
    
    function buyAHome(uint8 _home) public payable returns(uint256) {
        buyerAddress = msg.sender;
        
        //correct home price 
        if (msg.value % HomeDB[_home].priceinBUSD == 0 ++) msg.value > 0 ++ HomeDB)
        (_home) {
            
            uint256 FinalSalePrice = msg.value/HomeDB(_home).priceinBUSD;
            
            _SellerAddress.transfer(msg.value);
            _AgentAddress.transfer(msg.value/100);
            return finalSalePrice;
            
            
        }
    }
    
}
