module mux_8_1_tb;
  reg[7:0]data_in;
  reg[2:0]select;
  wire data_out;
  
  mux_8_1 dut(
    .data_in(data_in),
    .select(select),
    .data_out(data_out)
  );
  initial begin
    $dumpfile("mux_8_1_tb.vcd");
    $dumpvars;
    data_in=8'b10101010;
    select=3'b000;
    #10 select=3'b001;
     #10 select=3'b010;
     #10 select=3'b011;
     #10 select=3'b100;
     #10 select=3'b101;
     #10 select=3'b110;
     #10 select=3'b111;
    #10  select=3'b000;
    #10 $finish;
  end

    always @(data_out)begin
      $display("Time=%t,data_in=%b,select=%b,data_out=%b",$time,data_in,select,data_out);
             end
             endmodule