function plot_lines(x1,y1,x2,y2, intencity)

if x2 <= -1.8
    intencity = -intencity;
elseif x2 > -1.8 && x2 < 0
%     intencity = -0.08;
      intencity = -(2/5)*intencity;
end

for cir_x = 0:intencity: x2*1.5
    cir_y =line_dev(x1, y1, x2, y2, cir_x);
    plot(cir_x,cir_y,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    xlim([-15,15]); ylim([-15,15]);
    xlabel('x-axis');
    ylabel ('y-axis');

end