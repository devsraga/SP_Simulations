%% ploting hexagone
function semi_hex_3D_plot(Vert_Info, q)
% disp(Vert_Info)
% disp(max(Vert_Info))
if q == 1
 plot3(Vert_Info(1:7,1),Vert_Info(1:7,2), Vert_Info(1:7,3),'-or','LineWidth', 1, 'MarkerSize',2)
else
 plot3(Vert_Info(1:7,1),Vert_Info(1:7,2), Vert_Info(1:7,3),'-ob','LineWidth', 1, 'MarkerSize',2)
end
% plot(Vert_Down(1:7,1),Vert_Down(1:7,2),'-ok','LineWidth', 1.5, 'MarkerSize',3)
hold on;
% xlim([-15,15]); ylim([-15,15]); zlim([0, 10+max(Vert_Info(1:7,3))]);
% xlabel('x-axis'); ylabel ('y-axis'); zlabel ('z-axis');

end