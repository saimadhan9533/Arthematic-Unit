module a4b(a,b,o);
   input [3:0]a;
   input [3:0]b;
   output reg[7:0]o;

   always@(a,b,o)begin
     o=a+b;
   end




endmodule