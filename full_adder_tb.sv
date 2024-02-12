module full_adder_tb();

logic a1;
logic b1;
logic c1;
logic sum1;
logic carry1; // Added missing 'carry1' declaration

full_adder DUT ( // Added module instantiation name
    .a(a1),
    .b(b1),
    .c(c1),
    .sum(sum1),
    .carry(carry1)
);

initial begin
    // Provide different combinations of the inputs to check validity of code
    a1 = 0; b1 = 0; c1 = 0; // Changed 'a' and 'b' to 'a1' and 'b1'
    #10;
    a1 = 0; b1 = 0; c1 = 1; // Changed 'a' and 'b' to 'a1' and 'b1'
    #10;
    a1 = 0; b1 = 1; c1 = 0;
    #10;
    a1 = 0; b1 = 1; c1 = 1;
    #10;
    a1 = 1; b1 = 0; c1 = 0;
    #10;
    a1 = 1; b1 = 0; c1 = 1;
    #10;
    a1 = 1; b1 = 1; c1 = 0;
    #10;
    a1 = 1; b1 = 1; c1 = 1;
    #10;
    $stop;
end

endmodule