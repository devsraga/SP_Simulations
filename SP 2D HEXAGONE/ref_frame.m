% adding ref frame
function ref_frame(limit)
ref = [0,limit;0,-limit;limit,0;-limit,0];
plot(ref(1:2,1),ref(1:2,2),'-ok', 'LineWidth',1.5, 'MarkerSize',0.01);
hold on;
plot(ref(3:4,1),ref(3:4,2),'-ok', 'LineWidth',1.5, 'MarkerSize',0.01);
hold on;
xlim([-15,15]); ylim([-15,15]);
xlabel('x-axis');
ylabel ('y-axis');