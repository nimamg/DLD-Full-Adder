`timescale 1ns/1ns

module OC3GL (input a,b,c,output y0,y1);
  xor #(20,21) g1 (y0,a,b,c);
  
  wire o1,o2,o3;
  and #(3,4) g2 (o1,b,c);
  or #(6,5) g3 (o2,b,c);
  and #(3,4) g4 (o3,a,o2);
  or #(6,5) g5 (y1,o1,o3);
endmodule