% Equation of line:
function plot_dot_circle(radius,intencity)
for cir_x = -radius:intencity: radius
    cir_y =sqrt(radius^2-cir_x^2);
    disp([cir_x,cir_y])
    plot(cir_x,cir_y,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    plot(cir_x,-cir_y,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    
    plot(cir_y,cir_x,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    plot(-cir_y,cir_x,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;

    xlim([-15,15]); ylim([-15,15]);
    xlabel('x-axis');
    ylabel ('y-axis');
    

end