module top_tb ();
reg a;
wire b;

design_hello hello(
.a(a),
.b(b)
);


initial begin 

#30;
a=1'b0;
#20;
a=1'b1;
#30;
a=1'b0;
#2000;
a=1'b1;
#30;
a=1'b0;
#20;
a=1'b1;
#10000;
$display("TESTPASS");
$finish;
end

initial begin
    $dumpfile("wave1.vcd");
    $dumpvars(0, top_tb);
end
endmodule
