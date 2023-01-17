% adding ref frame
function link_plot(Vert_Down, Vert_Up)
linewidth = 1;
for i=1:7
AB=[Vert_Down(i,:);Vert_Up(i,:)];
%disp(A);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'g', 'LineWidth', linewidth);
end
end