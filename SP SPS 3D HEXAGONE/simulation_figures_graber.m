clc;
clear all;
figure(1)
subplot (2,4,1)
sp_pos_3Dplot (-8,0,0,0,0,0,1);

subplot (2,4,2)
sp_pos_3Dplot (-6.8072,4.2026,0,0,0,0,1);

subplot (2,4,3)
sp_pos_3Dplot (0,8,0,0,0,0,1);

subplot (2,4,4)
sp_pos_3Dplot (6.8072,4.2026,0,0,0,0,1);

subplot (2,4,5)
sp_pos_3Dplot (8,0,0,0,0,0,1);

subplot (2,4,6)
sp_pos_3Dplot (6.8072,-4.2026,0,0,0,0,1);

subplot (2,4,7)
sp_pos_3Dplot (0,-8,0,0,0,0,1);

subplot (2,4,8)
sp_pos_3Dplot (-6.8072,-4.2026,0,0,0,0,1);

%%
figure(2)
R = 8;
angle = 45;
subplot (2,4,1)
sp_pos_3Dplot (-R,0,0,0,0,0,1);

subplot (2,4,2)
sp_pos_3Dplot (-R*cos(angle),R*sin(angle),0,0,0,0,1);

subplot (2,4,3)
sp_pos_3Dplot (0,R,0,0,0,0,1);

subplot (2,4,4)
sp_pos_3Dplot (R*cos(angle),R*sin(angle),0,0,0,0,1);

subplot (2,4,5)
sp_pos_3Dplot (R,0,0,0,0,0,1);

subplot (2,4,6)
sp_pos_3Dplot (R*cos(angle),-R*sin(angle),0,0,0,0,1);

subplot (2,4,7)
sp_pos_3Dplot (0,-R,0,0,0,0,1);

subplot (2,4,8)
sp_pos_3Dplot (-R*cos(angle),-R*sin(angle),0,0,0,0,1);
%%
figure(3)
R = 8;
subplot (2,3,1)
sp_pos_3Dplot (R*cos(60),R*sin(60),0,0,0,0,1);
hold on;
plot3(R*cos(60),R*sin(60),0,'--.k', 'MarkerSize', 4);
hold on;

subplot (2,3,2)
sp_pos_3Dplot (R*cos(120),R*sin(120),0,0,0,0,1);
hold on;
plot3(R*cos(60),R*sin(60),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(120),R*sin(120),0,'--.k', 'MarkerSize', 4);
hold on;

subplot (2,3,3)
sp_pos_3Dplot (R*cos(180),R*sin(180),0,0,0,0,1);
hold on;
plot3(R*cos(60),R*sin(60),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(120),R*sin(120),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(180),R*sin(180),0,'--.k', 'MarkerSize', 4);
hold on;

subplot (2,3,4)
sp_pos_3Dplot (R*cos(240),R*sin(240),0,0,0,0,1);
hold on;
plot3(R*cos(60),R*sin(60),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(120),R*sin(120),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(180),R*sin(180),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(240),R*sin(240),0,'--.k', 'MarkerSize', 4);
hold on;

subplot (2,3,5)
sp_pos_3Dplot (R*cos(300),R*sin(300),0,0,0,0,1);
hold on;
plot3(R*cos(60),R*sin(60),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(120),R*sin(120),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(180),R*sin(180),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(240),R*sin(240),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(300),R*sin(300),0,'--.k', 'MarkerSize', 4);
hold on;

subplot (2,3,6)
sp_pos_3Dplot (R*cos(360),R*sin(360),0,0,0,0,1);
hold on;
plot3(R*cos(60),R*sin(60),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(120),R*sin(120),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(180),R*sin(180),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(240),R*sin(240),0,'--.k', 'MarkerSize', 4);
hold on;
plot3(R*cos(360),R*sin(360),0,'--.k', 'MarkerSize', 4);
hold on;

%% (1). Figure for drawing a circle in XY plane with R = 8(cm)
figure(4)
R = 8;
marker_size = 2;
marker_size_center = 6;
height = 13;
gap = 1;

% Angle = 60 ###############################################
subplot (2,3,1)
sp_pos_3Dplot (R*cosd(60),R*sind(60),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:60
    plot3(R*cosd(gita),R*sind(gita),height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:60
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end

% Angle = 360 ###############################################
subplot (2,3,2)
sp_pos_3Dplot (R*cosd(120),R*sind(120),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:120
    plot3(R*cosd(gita),R*sind(gita),height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:120
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end

% Angle = 180 ###############################################
subplot (2,3,3)
sp_pos_3Dplot (R*cosd(180),R*sind(180),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:180
    plot3(R*cosd(gita),R*sind(gita),height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end
for theta_temp = 0:gap:180
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end

% Angle = 240 ###############################################
subplot (2,3,4)
sp_pos_3Dplot (R*cosd(240),R*sind(240),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:180
    plot3(R*cosd(gita),R*sind(gita),height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:240
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end

% Angle = 300 ###############################################
subplot (2,3,5)
sp_pos_3Dplot (R*cosd(300),R*sind(300),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:240
    plot3(R*cosd(gita),R*sind(gita),height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:300
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end

% Angle = 360 ###############################################
subplot (2,3,6)
sp_pos_3Dplot (R*cosd(360),R*sind(360),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:300
    plot3(R*cosd(gita),R*sind(gita),height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:360
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end


%% (2). Figure for drawing a circle in YZ plane with R = 8(cm)
clc;
clear all;
figure(5)
R = 8;
marker_size = 2;
marker_size_center = 6;
height = 13;
gap = 1;
z_lim = 22;

% Angle = 60 ###############################################
subplot (2,3,1)
sp_pos_3Dplot (0,R*cosd(60),R*sind(60),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:60
    plot3(0,R*cosd(gita),R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:60
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 360 ###############################################
subplot (2,3,2)
sp_pos_3Dplot (0,R*cosd(120),R*sind(120),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:120
    plot3(0,R*cosd(gita),R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:120
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 180 ###############################################
subplot (2,3,3)
sp_pos_3Dplot (0,R*cosd(180),R*sind(180),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:180
    plot3(0,R*cosd(gita),R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end
for theta_temp = 0:gap:180
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 240 ###############################################
subplot (2,3,4)
sp_pos_3Dplot (0,R*cosd(240),R*sind(240),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:240
    plot3(0,R*cosd(gita),R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:240
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 300 ###############################################
subplot (2,3,5)
sp_pos_3Dplot (0,R*cosd(300),R*sind(300),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:300
    plot3(0,R*cosd(gita),R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:300
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 360 ###############################################
subplot (2,3,6)
sp_pos_3Dplot (0,R*cosd(360),R*sind(360),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:360
    plot3(0,R*cosd(gita),R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:360
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

%% (3). Figure for drawing a circle in ZX plane with R = 8(cm)
clc;
clear all;
figure(5)
R = 8;
marker_size = 2;
marker_size_center = 6;
height = 13;
gap = 1;
z_lim = 22;

% Angle = 60 ###############################################
subplot (2,3,1)
sp_pos_3Dplot (R*cosd(60),0,R*sind(60),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:60
    plot3(R*cosd(gita),0,R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:60
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 360 ###############################################
subplot (2,3,2)
sp_pos_3Dplot (R*cosd(120),0,R*sind(120),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:120
    plot3(R*cosd(gita),0,R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:120
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 180 ###############################################
subplot (2,3,3)
sp_pos_3Dplot (R*cosd(180),0,R*sind(180),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:180
    plot3(R*cosd(gita),0,R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end
for theta_temp = 0:gap:180
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 240 ###############################################
subplot (2,3,4)
sp_pos_3Dplot (R*cosd(240),0,R*sind(240),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:240
    plot3(R*cosd(gita),0,R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:240
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 300 ###############################################
subplot (2,3,5)
sp_pos_3Dplot (R*cosd(300),0,R*sind(300),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:300
    plot3(R*cosd(gita),0,R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:300
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 360 ###############################################
subplot (2,3,6)
sp_pos_3Dplot (R*cosd(360),0,R*sind(360),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:360
    plot3(R*cosd(gita),0,R*sind(gita)+height,'--.k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:360
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

%% (4). Figure for drawing diffrent circles in XY, YZ, ZX plane with R = 8(cm)
clc;
clear all;
figure(5)
R = 8;
marker_size = 2;
marker_size_center = 6;
height = 13;
gap = 3;
z_lim = 22;

% Angle = 360 ###############################################
subplot (2,2,1)
sp_pos_3Dplot (0,0,0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;

% Angle = 360 ###############################################
subplot (2,2,2)
sp_pos_3Dplot (R*cosd(360),R*sind(360),0,0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:360
    plot3(R*cosd(gita),R*sind(gita),height,'-->k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:360
plot3(R*cosd(theta_temp),R*sind(theta_temp),height,'--.r', 'MarkerSize', marker_size);
hold on;
end

% Angle = 360 ###############################################
subplot (2,2,3)
sp_pos_3Dplot (0,R*cosd(360),R*sind(360),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:360
    plot3(0,R*cosd(gita),R*sind(gita)+height,'-->k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:360
plot3(0,R*cosd(theta_temp),R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);

% Angle = 360 ###############################################
subplot (2,2,4)
sp_pos_3Dplot (R*cosd(360),0,R*sind(360),0,0,0,1);
hold on;
plot3(0,0,13,'--.k', 'MarkerSize', marker_size_center);
hold on;
for gita = 0:60:360
    plot3(R*cosd(gita),0,R*sind(gita)+height,'-->k', 'MarkerSize', marker_size_center);
    hold on;
end

for theta_temp = 0:gap:360
plot3(R*cosd(theta_temp),0,R*sind(theta_temp)+height,'--.r', 'MarkerSize', marker_size);
hold on;
end
xlim([-15,15]); ylim([-15,15]); zlim([0, z_lim]);