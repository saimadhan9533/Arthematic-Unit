module d4b(a,b,o3,o4);
   input [3:0]a;
   input [3:0]b;
   output reg[7:0]o3,o4;

   always@(a,b,o3,o4)begin
     o3=a/b;
     o4=a%b;
   end

endmodule