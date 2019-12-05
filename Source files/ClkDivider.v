module ClkDivider(out, clk, rst);
output out;
input clk, rst;
reg out;
reg [27:0] counter;
always @(posedge clk, negedge rst)
begin
if(!rst)
begin out <= 0;counter <= 0; end
else if (counter == 28'h17D783F) //25M–1, the counter starts from 0(zero)
begin out <= !out; counter <= 0; end
else
counter <= counter + 1;
end
endmodule
 