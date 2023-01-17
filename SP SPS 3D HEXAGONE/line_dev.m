% Equation of line:
function line_y = line_dev (x1,y1,x2,y2,line_x)
line_y = ((y2-y1)/(x2-x1))*(line_x-x1)+y1;