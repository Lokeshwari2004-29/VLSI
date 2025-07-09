module dff_tb;
  reg d,q,clk,rst;
  dff_test(.d(d).q(q),clk(clk),rst(rst);
           initial
             fork
               clk=()
               #1 rst=1;#1 rst=0;
               repeat(5) begin
                 #2 d=0; #2 d=1;
               end join
           always
             #clk=~clk;
           initial begin
             $monitor("%t clk=%b,rst=%b,d=%b")
                      $dumpfile("dff.vcd");
                      $dumpvars;
                      $finish;
                      end
                      endmodule