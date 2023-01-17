%MATLAB Code for Serial Communication between Arduino and MATLAB
clc
clear all
x=serialport('COM10', 115200);

fopen(x);
go = true;
 
while go               
% a= input("enter: ");
a = 1;

% fprintf(x,a);  
 write(x,a,"int8")
%  data = read(x,9,"string");
 data1 = read(x,1, "uint8");
 disp(class(data1));
%  disp(data)
 disp(data1)

if (a == 'q')
  go=false;
end
end