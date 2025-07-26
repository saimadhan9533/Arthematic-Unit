module tb();
   reg [3:0]a,b;
   reg [1:0]c;
   wire [7:0]o,o1,o2,o3,o4;

   cs dut(.a(a),.b(b),.o(o),.o1(o1),.o2(o2),.o3(o3),.o4(o4),.c(c));

   initial begin
     c=2'b00;
     a=4'b1000;
     b=4'b0101;
     #10;

     c=2'b01;
     a=4'b1001;
     b=4'b1101;
     #10;

     c=2'b10;
     a=4'b1010;
     b=4'b0110;
     #10;

     c=2'b11;
     a=4'b1111;
     b=4'b0010;
     #10;

     c=2'bzz;
     a=4'b1010;
     b=4'b0010;
     #10;
     $finish;


   end
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0);
   end

endmodule