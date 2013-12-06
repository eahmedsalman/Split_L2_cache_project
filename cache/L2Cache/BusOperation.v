/*
Bus Operation Functions
This file includes definitions of all Bus Operation Functions
*/

module BusOperation();
  
  `include "config.v"
  
  //Bus Read Function. Prints out R Address 
  function busRead;
    input [add_size-1:0]address;
    if(busOperation)
    $display("R %h",address);
  endfunction
 
  //Bus Write Function. Prints out W Address 
  function busWrite;
    input [add_size-1:0]address;
    if(busOperation)
    $display("W %h",address);
  endfunction
  
  //Bus Modify Function. Prints out M Address
 function busModify;
   input [add_size-1:0]address;
   if(busOperation)
   $display("M %h",address);
 endfunction
 
 //Bus Invalidate Function. Prints out I Address
 function busInvalidate;
   input [add_size-1:0]address;
   if(busOperation)
   $display("I %h",address);
 endfunction
  
endmodule