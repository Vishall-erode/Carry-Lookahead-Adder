module carry_lookahead_adder_tb; 
  reg [3:0] a; 
  reg [3:0] b; 
 wire [3:0] sum; 
  wire [3:0] carry; 
  carry_lookahead_adder_rtl Dut ( 
    .a(a), 
    .b(b), 
    .sum(sum), 
    .carry(carry) 
  ); 
  initial begin 
    a = 4'b0000; b = 4'b0000; 
    #10; 
    a = 4'b0001; b = 4'b0001; 
    #10; 
    a = 4'b0010; b = 4'b0010; 
    #10; 
    a = 4'b0011; b = 4'b0011; 
    #10; 
    a = 4'b1010; b = 4'b0101; 
    #10; 
    a = 4'b1111; b = 4'b1111; 
    #10; 
    $stop; 
  end 
endmodule
