module logic_data_type(input logic rst_h);
  parameter cycle = 20;
  logic q,qb,d,clk,rst_l;
  initial begin
    clk <= 0;
    forever #(cycle/2) clk = ~clk;
  end
  assign rst_l = ~rst_h;
  not n1(qb,q);
  dff d1(q,d,clk,rst_l);
endmodule

