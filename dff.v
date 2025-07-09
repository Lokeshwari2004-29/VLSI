module dff(d,q,clk,rst);
  input d,clk,rst;
  output q;
  reg d,q,clk,rst;
  always @(posedge clk)
    begin
      if(rst)
        q<=0;
      else
        if(d==0)
          q<=0;
      else
        q<=1;
    end
endmodule
