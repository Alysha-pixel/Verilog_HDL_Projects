// GATE LEVEL MODELING
module fulladd(sum,c_out,a,b,c_in);
input a,b,c_in;
output sum, c_out;
wire c1,c2,c3;
xor xor1(c1,a,b);
xor xor2(sum,c1,c_in);
and and1(c2,a,b);
and and2(c3,c1,c_in);
or or1(c_out,c3,c2);

endmodule