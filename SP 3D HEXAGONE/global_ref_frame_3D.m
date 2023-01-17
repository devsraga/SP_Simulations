% adding global ref frame
function global_ref_frame_3D()
linewidth = 1.5;
plot3([0 3],[0 0],[0 0],'r', 'LineWidth', linewidth);
hold on;
plot3([0 0],[0 3],[0 0],'k', 'LineWidth', linewidth);
hold on;
plot3([0 0],[0 0],[0 3],'b', 'LineWidth', linewidth);
hold on;
end