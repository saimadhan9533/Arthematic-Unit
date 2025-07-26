module m4b(a,b,o2);
   input [3:0]a;
   input [3:0]b;
   output reg[7:0]o2;

   always@(a,b,o2)begin
     o2=a*b;
   end




endmodule