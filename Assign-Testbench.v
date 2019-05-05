`timescale 1ns/1ns

module OC3ALTB ();
  reg aa,bb,cc;
  wire as0,as1,sl0,sl1,gl0,gl1;
  OC3AL uut (aa,bb,cc,as0,as1);
  OC3SL uut2 (aa,bb,cc,sl0,sl1);
  OC3GL uut3 (aa,bb,cc,gl0,gl1);
  initial begin
    aa = 0;
    bb = 0;
    cc = 0;
    #150 aa = 1;
    #50 bb = 1;
    #50 aa = 0;
    #50 cc = 1;
    #50 aa = 1;
    #50 bb = 0;
    #50 aa = 0;
  end
endmodule