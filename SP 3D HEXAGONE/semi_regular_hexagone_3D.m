%% Initialization
clc
clear all
%% Vertises information...
Vert = sp_inv_k_vertises (0,0,0,0,0,0);   % All vertises including UP wrt {x, y, z} and DOWN wrt {X,Y,Z} 
disp(Vert)

Vert_Down = [Vert(1:6,1:3);Vert(1,1:3)];  % All vertises of DOWN plate wrt {X,Y,Z},  HINT: 1,2,3,4,5,6,1
disp(Vert_Down)

Vert_Up = [Vert(7:12,1:3);Vert(7,1:3)];  % All vertises of UP plate wrt {X,Y,Z},   HINT: 7,8,9,10,11,12,7
disp(Vert_Up)

%% adding ref frame
ref_frame_3D(13)


%% ploting 3D Lower hexagone
semi_hex_3D_plot(Vert_Down)
hold on;

%% ploting 3D Uper hexagone
semi_hex_3D_plot(Vert_Up)
hold on;

%% 3D Circle plot
radius_3D = 3;
plot_3D_circle(radius_3D,0.02, 26)
hold on;

%% Adding Limits, minors, grids, labels
grid on; grid minor;
xlim([-15,15]); ylim([-15,15]); zlim([0, 10+max(Vert_Up(1:7,3))]);
xlabel('x-axis'); ylabel ('y-axis'); zlabel ('z-axis');

