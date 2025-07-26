module s4b(a,b,o1);
   input [3:0]a;
   input [3:0]b;
   output reg[7:0]o1;

   always@(a,b,o1)begin
     o1=a-b;
   end




endmodule