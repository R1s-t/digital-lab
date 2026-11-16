//1位全加器
//输入a,b,cin；输出sum，cout
module full_adder(
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);

    assign sum  = a^b^cin;
    assign cout = (a&b)|((a|b)&cin);

endmodule
