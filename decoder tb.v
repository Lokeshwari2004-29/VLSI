module decoder_4_2_tb;
  reg a,b,c,d;
  wire x,y;
  decoder_4_2 decoder(a,b,c,d,x,y);
  initial begin
    $monitor("At time %0t:a=%b b=%d c=%b d=%b,x=%b,y=%b",$time,a,b,c,d,x,y);
    $dumpfile("decoder.vcd");
    $dumpvars;
     a=1; b=0; c=0; d=0; #1;
     a=0; b=1; c=0; d=0; #1;
     a=0; b=0; c=1; d=0; #1;
     a=0; b=0; c=0; d=1; 
  end
endmodule
