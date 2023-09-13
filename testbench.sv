// Testbench for the 4-input OR gate
module tb_or4;

  // Define signals for connecting to the DUT (Device Under Test)
  logic a, b, c, d, y;


  // Instantiate the OR4 gate module
  OR4 dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y)
  );

  // Initialize the signals
  initial begin
    a = 0; b = 0; c = 0; d = 0;
    // Apply test vecto
    $display("Input a\tInput b\tInput c\tInput d\tOutput y");
    $display("------------------------------------------------");
    
    // Test Case 1: All inputs are 0
    #10; // Wait for a simulation time of 10 time units
    $display("%b\t%b\t%b\t%b\t%b", a, b, c, d, y);
    
    // Test Case 2: One input is 1
    b = 1;
    #10;
    $display("%b\t%b\t%b\t%b\t%b", a, b, c, d, y);
    
    // Test Case 3: Two inputs are 1
    c = 1;
    #10;
    $display("%b\t%b\t%b\t%b\t%b", a, b, c, d, y);
    
    // Test Case 4: Three inputs are 1
    a = 1;
    #10;
    $display("%b\t%b\t%b\t%b\t%b", a, b, c, d, y);
    
    // Test Case 5: All inputs are 1
    d = 1;
    #10;
    $display("%b\t%b\t%b\t%b\t%b", a, b, c, d, y);
    
    // End the simulation
    $finish;
  end
      initial begin
        $dumpfile("tb_or4.vcd");
        $dumpvars(0, tb_or4);
  end
endmodule
