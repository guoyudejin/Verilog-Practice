module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] result
);

    wire cin1,cout1,cout2;
    wire [15:0] sum1,sum2;
    assign cin1 = sub;
    add16 ins1(a[15:0],b[15:0]^{16{sub}},cin1,sum1,cout1);
    add16 ins2(a[31:16],b[31:16]^{16{sub}},cout1,sum2,cout2);
    assign sum= {sum2,sum1};
    
endmodule
