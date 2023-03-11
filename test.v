module and_test;
reg a1, b1;
wire y1;

xor_beh m1(y1, a1, b1);

initial
begin
    a1 = 1'b0;
    b1 = 1'b0;
    #10
    $display("%t | A = %b | B = %b | Y = %b", $time, a1, b1, y1);
    a1 = 1'b1;
    #10
    $display("%t | A = %b | B = %b | Y = %b", $time, a1, b1, y1);
    b1 = 1'b1;
    #10
    $display("%t | A = %b | B = %b | Y = %b", $time, a1, b1, y1);
    a1 = 1'b0;
    #10 
    $display("%t | A = %b | B = %b | Y = %b", $time, a1, b1, y1);
end
endmodule
