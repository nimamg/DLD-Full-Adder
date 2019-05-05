`timescale 1ns/1ns

module OC3SLTB ();
  reg aa,bb,cc;
  wire yy0,yy1;
  OC3SL uut (aa,bb,cc,yy0,yy1);
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
