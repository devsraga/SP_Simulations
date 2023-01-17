% Equation of line:
function plot_3D_circle(radius,intencity, cir_z)
for cir_x = -radius:intencity: radius
    cir_y =sqrt(radius^2-cir_x^2);
    disp([cir_x,cir_y])
    
    plot3(cir_x,cir_y,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    plot3(cir_x,-cir_y,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    
    plot3(cir_y,cir_x,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    plot3(-cir_y,cir_x,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;

end