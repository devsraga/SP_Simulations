%% ploting hexagone
function semi_hex_plot(Vert_Down)
plot(Vert_Down(1:7,1),Vert_Down(1:7,2),'--ok','LineWidth', 1, 'MarkerSize',2)
% plot(Vert_Down(1:7,1),Vert_Down(1:7,2),'-ok','LineWidth', 1.5, 'MarkerSize',3)
hold on;
xlim([-15,15]); ylim([-15,15]);
xlabel('x-axis');
ylabel ('y-axis');