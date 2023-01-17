%% Initialization
clc
% clear all
%% Vertises information...
Vert = sp_inv_k_vertises (0,0,0,0,0,0);   % All vertises including UP wrt {x, y, z} and DOWN wrt {X,Y,Z} 
disp(Vert)
Vert_Down = [Vert(1:6,1:3);Vert(1,1:3)];  % All vertises of DOWN plate wrt {X,Y,Z}
disp(Vert_Down)
%% ploting hexagone
semi_hex_plot(Vert_Down)

%% adding ref frame
ref_frame(13)

%% adding doted circle
radius_vector = (Vert_Down(1 :6,1)).^2 + (Vert_Down(1:6,2)).^2;
radius = sqrt(radius_vector(1));

plot_dot_circle(radius,0.2)
for i = 1:6
plot_lines(0, 0 , Vert(i,1), Vert(i,2), 0.2)
end

%% adding solid circle 
radius_vector = (Vert_Down(1:6,1)).^2 + (Vert_Down(1:6,2)).^2;
radius = sqrt(radius_vector(1));

plot_dot_circle(radius,0.002)
for i = 1:6
plot_lines(0, 0 , Vert(i,1), Vert(i,2), 0.002)
end

%% 3D Circle plot
radius_3D = 5;
plot_3D_circle(radius_3D,0.02, 13)
grid on; grid minor;
hold on;

