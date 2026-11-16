module tb_adder4;

    reg  [3:0] a,b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    adder4 uut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    integer i;

    initial begin
        $dumpfile("tb_adder4.vcd");
        $dumpvars(0, tb_adder4);
        for (i = 0; i < 512; i = i + 1) begin
            {a, b, cin} = i[8:0];
            #10;
            $display("a=%b(%0d),b=%b(%0d),cin=%b(%0d) -> sum=%b(%0d),cout=%b",a,a,b,b,cin,cin,sum,sum,cout);
        end
        $finish;
    end

endmodule
