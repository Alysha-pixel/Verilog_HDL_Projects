// GATE-LEVEL MODELLING

module fulladd(sum,c_out,a,b,c_in);
 input a,b,c_in;
 output sum,c_out;
wire c1,c2,c3;
xor xor1(c1,a,b);
xor xor2(sum,c1,c_in);
and and1(c2,a,b);
and and2(c3,c1,c_in);
or or1(c_out,c3,c2);

endmodule

module ripple_addr(SUM,C_OUT,A,B,C_IN);
input [3:0] A,B;
input C_IN;
output[3:0] SUM;
output C_OUT;
wire C1,C2,C3;

fulladd fa0(SUM[0],C1,A[0],B[0],C_IN);
fulladd fa1(SUM[1],C2,A[1],B[1],C1);
fulladd fa2(SUM[2],C3,A[2],B[2],C2);
fulladd fa3(SUM[3],C_OUT,A[3],B[3],C3);

endmodule