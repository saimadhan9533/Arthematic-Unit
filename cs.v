`include "a4b.v"
`include "s4b.v"
`include "m4b.v"
`include "d4b.v"
module cs(a,b,o,o1,o2,o3,o4,c);
   input [3:0]a;
   input [3:0]b;
   input [1:0]c;
   output  reg[7:0]o,o1,o2,o3,o4;
   
   wire [7:0] add_out,sub_out,mul_out,quo_out,rem_out;

   a4b ab(.a(a),.b(b),.o(add_out));
   s4b sb(.a(a),.b(b),.o1(sub_out));
   m4b mb(.a(a),.b(b),.o2(mul_out));
   d4b db(.a(a),.b(b),.o3(quo_out),.o4(rem_out));
   always @(*) begin
      case(c) 
        2'b00:begin
          o=add_out;
          o1=0;
          o2=0;
          o3=0;
          o4=0;
        end

        2'b01:begin
          o=0;
          o1=sub_out;
          o2=0;
          o3=0;
          o4=0;
        end
        2'b10:begin
          o=0;
          o1=0;
          o2=mul_out;
          o3=0;
          o4=0;
        end
        2'b11:begin
          o=0;
          o1=0;
          o2=0;
          o3=quo_out;
          o4=rem_out;
        end
        default: $display("enter between 00 to 11");
      endcase
     
   end
   
endmodule