module encoder_4_2(D0,D1,D2,D3,A,B);
  input D0,D1,D2,D3;
  output A,B;
  assign A=D2|D3;
  assign B=D1|D3;
endmodule
​