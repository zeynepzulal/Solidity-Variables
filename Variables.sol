// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;

contract Variables{
    /*
      local:
          -function icerisinde tanimlanirlar
          -blockchainde depolanmazlar
      state:
          -function disarisinda tanimlanirlar
          -blockchainde depolanirlar
      global:
          -blockchain ile alakali global degiskenlerdir, veri olarak kullanilirlar
          -global bilgilere sadece function icerisinden ulasabiliyoruz.
    */
 
    //state
    string public text = "Hello state"; 
    uint public num = 123; 
    address public caller;

    function doSomething() public {
        //local
        uint i = 234; 

        //global
        uint timestamp = block.timestamp; //current timestamp for block
        address sender = msg.sender; //adress of function caller

        caller = msg.sender;
}
 


  //adresi return et demek. VIEW -> state etmiyor sadece fonksiyonu  gösteriyor, getter fonksiyon oldugunu belirtir.
   function getCaller() public view returns(address){  
   return caller;
  }

}