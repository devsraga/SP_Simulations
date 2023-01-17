% sp_animation_without_via
load start_n_goal_positions.txt
% qs=[X1,Y1,Z1,Alpha_1,Bita_1,Gama_1];
qs=start_n_goal_positions(1,:);
% qg=[X2,Y2,Z2,Alpha_2,Bita_2,Gama_2];
qg=start_n_goal_positions(2,:);
n=.05;
tg=8;
t_ime=[0:n:tg];

% px=qs(1); py=qs(2); pz=qs(3); alpha=qs(4); bita=qs(5); gama=qs(6);
%  
% 
% px=qg(1); py=qg(2); pz=qg(3); alpha=qg(4); bita=qg(5); gama=qg(6);


M = ptp_no_via_1(qs,qg,tg,t_ime);
% disp(M)
% disp(M(1,:))
for i = 1:length(M)/3
pos = M(i,:);
px=pos(1); py=pos(2); pz=pos(3); alpha=pos(4); bita=pos(5); gama=pos(6);
sp_pos_3Dplot (px,py,pz,alpha,bita,gama,1)
pause (0.001);
end
%%
t = 0:pi/50:10*pi;
        plot3(sin(t),cos(t),t);