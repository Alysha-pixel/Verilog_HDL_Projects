`timescale 1ns/1ns
`include "ripple_adder.v"

module ripple_adder_tb;

reg[3:0] A,B;
reg C_IN;
wire[3:0] SUM;
wire C_OUT;

ripple_addr RA(SUM,C_OUT,A,B,C_IN);

initial begin
    $monitor($time," A=%b, B=%b, C_IN=%b --> SUM=%b, C_OUT=%b", A,B,C_IN,SUM,C_OUT);
    end
initial begin
    $dumpfile("ripple_adder.vcd");
    $dumpvars(0,ripple_adder_tb);
    // TEST CASES
    A=4'd0; B=4'd0; C_IN=1'd0;
#5  A=4'd3; B=4'd2; C_IN=1'd1;
#5  A=4'd10; B=4'd4; C_IN=1'd0;
#5  A=4'd8; B=4'd12; C_IN=1'd1;
#5  A=4'd0; B=4'd0; C_IN=1'd1;

#5 $finish;

end

endmodule