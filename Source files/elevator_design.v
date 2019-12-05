`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:09 05/19/2017 
// Design Name: 
// Module Name:    elevator_design 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: by Engr Muhammad Ather Hussain
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module elevator_design(clk,rst,up,down,inf,outfloor);

output reg[2:0] outfloor;
input clk,rst,up,down;
input [2:0] inf;
reg [2:0] curr_floor , nxt_floor ;

//ClkDivider CD(dividedCLK,clk,rst);

parameter F0 =3'b000; //Ground floor 
parameter F1 =3'b001; //1st floor 
parameter F2 =3'b010; //2nd floor 
parameter F3 =3'b011; //3rd floor
parameter F4 =3'b100; //4rth floor
parameter F5 =3'b101; //5th floor
parameter F6 =3'b110; //6th floor
parameter F7 =3'b111; //7th floor 


always@(posedge clk or negedge rst )
if(rst==0)

curr_floor<=F0;
else
curr_floor<=nxt_floor;


always @(curr_floor or up or down or inf)

case(curr_floor)
//for case ground floor
F0:
//for up
if(up)
begin

if(inf==1) 
begin
nxt_floor<=F1;
outfloor<=1;
end

else if(inf==2) 
begin
nxt_floor<=F2;
outfloor<=2;
end

else if(inf==3)
 begin
outfloor<=3;
end

else if(inf==4)
 begin
  nxt_floor<=F4;
  outfloor<=4;
end

else if(inf==5)
 begin
  nxt_floor<=F5;
  outfloor<=5;
end

else if(inf==6)
 begin
  nxt_floor<=F6;
  outfloor<=6;
end

else if(inf==7)
 begin
  nxt_floor<=F7;
  outfloor<=7;
end

else 
 begin
  nxt_floor<=F0;
  outfloor<=0;
end 
end
//for down
else if(down)
 begin
  nxt_floor<=F0;
  outfloor<=0;
end 
//for no input value of up or down
else 
 begin
  nxt_floor<=F0;
  outfloor<=0;
end
//for case floor 1
F1:
// for up
if(up)
begin

if(inf==2) 
begin
nxt_floor<=F2;
outfloor<=2;
end

 else if(inf==3)
 begin
outfloor<=3;
end

else if(inf==4)
 begin
  nxt_floor<=F4;
outfloor<=4;
end

else if(inf==5)
 begin
  nxt_floor<=F5;
 outfloor<=5;
end

else if(inf==6)
 begin
  nxt_floor<=F6;
 outfloor<=6;
end

else if(inf==7)
 begin
  nxt_floor<=F7;
  outfloor<=7;
end

else 
 begin
  nxt_floor<=F1;
   outfloor<=1;
end
end
//for down
else if(down)
begin

if(inf==0)
 begin
  nxt_floor<=F0;
  outfloor<=0;
end 

else
 begin
  nxt_floor<=F1;
   outfloor<=1;
end 
end
//for no input value of up or down
else 
 begin
  nxt_floor<=F1;
  outfloor<=1;
end
//for case floor 2
F2:
//for up
if(up)
begin

 if(inf==3)
 begin
  nxt_floor<=F3;
 outfloor<=3;
end

else if(inf==4)
 begin
  nxt_floor<=F4;
 outfloor<=4;
end

else if(inf==5)
 begin
  nxt_floor<=F5;
  outfloor<=5;
end

else if(inf==6)
 begin
  nxt_floor<=F6;
 outfloor<=6;
end

else if(inf==7)
 begin
  nxt_floor<=F7;
  outfloor<=7;
end

else 
 begin
  nxt_floor<=F2;
  outfloor<=2;
end
end
//for down
else if(down)
begin

if(inf==1)
begin
 nxt_floor<=F1;
 outfloor<=1;
end

else if(inf==0)
begin nxt_floor<=F0;
 outfloor<=0;
end

else 
 begin
  nxt_floor<=F2;
   outfloor<=2;
end
end
//for no input value of up or down
else 
 begin
  nxt_floor<=F2;
   outfloor<=2;
end
//for case floor 3
F3:
//for up
if(up)
begin

 if(inf==4)
 begin
  nxt_floor<=F4;
 outfloor<=4;
end

else if(inf==5)
 begin
  nxt_floor<=F5;
 outfloor<=5;
end

else if(inf==6)
 begin
  nxt_floor<=F6;
  outfloor<=6;
end

else if(inf==7)
 begin
  nxt_floor<=F7;
 outfloor<=7;
end

else 
 begin
  nxt_floor<=F3;
   outfloor<=3;
end
end
//for down 
else if(down)
begin

if(inf==2)
begin 
 nxt_floor<=F2;
 outfloor<=2;
end

else if(inf==1)
begin
nxt_floor<=F1;
 outfloor<=1;
end

else if(inf==0)
begin nxt_floor<=F0;
 outfloor<=0;
end

else 
 begin
  nxt_floor<=F3;
  outfloor<=3;
end
end
//for no input value of up or down
else 
 begin
  nxt_floor<=F3;
  outfloor<=3;
end
//for case floor 4
F4:
if(up)
begin

if(inf==5)
 begin
  nxt_floor<=F5;
  outfloor<=5;
end

else if(inf==6)
 begin
  nxt_floor<=F6;
 outfloor<=6;
end

else if(inf==7)
 begin
  nxt_floor<=F7;
 outfloor<=7;
end

else 
 begin
  nxt_floor<=F4;
   outfloor<=4;
end
end
//for down
else if(down)
begin

 if(inf==3)
begin
nxt_floor<=F3;
 outfloor<=3;
end

else if(inf==2)
begin
nxt_floor<=F2;
 outfloor<=2;
end

else if(inf==1)
begin
 nxt_floor<=F1;
 outfloor<=1;
end

else if(inf==0)
begin nxt_floor<=F0;
 outfloor<=0;
end

else 
 begin
  nxt_floor<=F4;
  outfloor<=4;
end
end 
//for no input value of up or down
else 
 begin
  nxt_floor<=F4;
 outfloor<=4;
end
//for case floor 5
F5:
//for up
if(up)
begin
if(inf==6)
 begin
  nxt_floor<=F6;
 outfloor<=6;
end

else if(inf==7)
 begin
  nxt_floor<=F7;
  outfloor<=7;
end

else 
 begin
  nxt_floor<=F5;
   outfloor<=5;
end
end

//for down
else if(down)
begin

if(inf==4)
begin
nxt_floor<=F4;
 outfloor<=4;
end

else if(inf==3)
begin
nxt_floor<=F3;
 outfloor<=3;
end

else if(inf==2)
begin
nxt_floor<=F2;
 outfloor<=2;
end

else if(inf==1)
begin
nxt_floor<=F1;
 outfloor<=1;
end

else if(inf==0)
begin nxt_floor<=F0;
 outfloor<=0;
end

else 
 begin
  nxt_floor<=F5;
 outfloor<=5;
end
end 
//for no input value of up or down
else 
 begin
  nxt_floor<=F5;
   outfloor<=5;
end

//for case floor 6
F6:
if(up)
begin

 if(inf==7)
 begin
  nxt_floor<=F7;
  outfloor<=7;
end

else 
 begin
  nxt_floor<=F6;
   outfloor<=6;
end
end
//for down
else if(down)
begin

if(inf==5)
begin
nxt_floor<=F5;
 outfloor<=5;
end

else if(inf==4)
begin
nxt_floor<=F4;
 outfloor<=4;
end

else if(inf==3)
begin
nxt_floor<=F3;
 outfloor<=3;
end

else if(inf==2)
begin
nxt_floor<=F2;
 outfloor<=2;
end

else if(inf==1)
begin
nxt_floor<=F1;
 outfloor<=1;
end

else if(inf==0)
begin nxt_floor<=F0;
 outfloor<=0;
end

else 
 begin
  nxt_floor<=F6;
   outfloor<=6;
end
end 
//for no input value of up or down
else 
 begin
  nxt_floor<=F6;
   outfloor<=6;
end
//for case floor 7
F7:
//for up
if(up)

 begin
  nxt_floor<=F7;
   outfloor<=7;
end

//for down
else if(down)
begin

if(inf==6)
begin
nxt_floor<=F6;
 outfloor<=6;
end

else if(inf==5)
begin
nxt_floor<=F5;
 outfloor<=5;
end

else if(inf==4)
begin
nxt_floor<=F4;
 outfloor<=4;
end

else if(inf==3)
begin
nxt_floor<=F3;
 outfloor<=3;
end

else if(inf==2)
begin
nxt_floor<=F2;
 outfloor<=2;
end

else if(inf==1)
begin
nxt_floor<=F1;
 outfloor<=1;
end

else if(inf==0)
begin nxt_floor<=F0;
 outfloor<=0;
end

else 
 begin
  nxt_floor<=F7;
   outfloor<=7;
end
end 
//for no input value of up or down
else 
 begin
  nxt_floor<=F7;
  outfloor<=7;
end

endcase
endmodule