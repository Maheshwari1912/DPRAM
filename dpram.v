module dual_port_ram(
  input clk, input wr1, input wr2,
  input [3:0] addr1,addr2,
  input [7:0] data_in1, data_in2,
  output reg [7:0] data_out1,data_out2);
  reg [7:0] mem [15:0];
  always@(posedge clk) begin
    if(wr1)
      mem[addr1]<=data_in1;
    else 
      data_out1<=mem[addr1];
  end
  always@(posedge clk)begin
    if(wr2)
      mem[addr2]<=data_in2;
    else
      data_out2<=mem[addr2];
  end
endmodule
    
  
