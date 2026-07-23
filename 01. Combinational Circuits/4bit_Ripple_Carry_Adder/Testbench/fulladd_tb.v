`timescale 1ns/1ns
`include "fulladd.v"

module fulladd_tb;

reg A,B,C_IN;
wire SUM,C_OUT;
 
fulladd fa(SUM,C_OUT,A,B,C_IN);

initial begin
$monitor($time, "A=%b, B=%b, C_IN=%b, SUM=%b, C_OUT=%b",A,B,C_IN,SUM,C_OUT);
end

initial begin
    $dumpfile("fulladd.vcd");
    $dumpvars(0,fulladd_tb);

    // initial values
    A= 1'd0; B=1'd0; C_IN=1'd0;

    // Different input combos

  #2  A=1'd0; B=1'd0; C_IN=1'd1;
  #2 A=1'd0; B=1'd1; C_IN=1'd0;
  #2  A=1'd0; B=1'd1; C_IN=1'd1;
  #2 A=1'd1; B=1'd0; C_IN=1'd0;  
  #2 A=1'd1; B=1'd0; C_IN=1'd1;
  #2 A=1'd1; B=1'd1; C_IN=1'd0;  
  #2 A=1'd1; B=1'd1; C_IN=1'd1;

  #5 $finish;
  end  
endmodule
    
    
  


