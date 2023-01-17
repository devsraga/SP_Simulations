 % sp_animation_without_via
load start_n_goal_positions.txt
% qs=[X1,Y1,Z1,Alpha_1,Bita_1,Gama_1];
qs=start_n_goal_positions(1,:);
% qg=[X2,Y2,Z2,Alpha_2,Bita_2,Gama_2];
qg=start_n_goal_positions(2,:);
n=.5;
tg=8;
t_ime=[0:n:tg];

px=qs(1);
py=qs(2);
pz=qs(3);
alpha=qs(4);
bita=qs(5);
gama=qs(6);
Vertises_1 = sp_inv_k_vertises (px,py,pz,alpha,bita,gama);
up_1=Vertises_1(7:12,:)
disp('***')
down=Vertises_1(1:6,:)
disp('***')
px=qg(1);
py=qg(2);
pz=qg(3);
alpha=qg(4);
bita=qg(5);
gama=qg(6);
Vertises_2 = sp_inv_k_vertises (px,py,pz,alpha,bita,gama);
up_2=Vertises_2(7:12,:)
disp('***')
down_2=Vertises_2(1:6,:)
disp('***')




    qs=up_1(1,:);
    qg=up_2(1,:);
  kine_para_v_1 = ptp_no_via_1(qs,qg,tg,t_ime);
      qs=up_1(2,:);
    qg=up_2(2,:);
  kine_para_v_2 = ptp_no_via_1(qs,qg,tg,t_ime);
      qs=up_1(3,:);
    qg=up_2(3,:);
  kine_para_v_3 = ptp_no_via_1(qs,qg,tg,t_ime);
      qs=up_1(4,:);
    qg=up_2(4,:);
  kine_para_v_4 = ptp_no_via_1(qs,qg,tg,t_ime);
      qs=up_1(5,:);
    qg=up_2(5,:);
  kine_para_v_5 = ptp_no_via_1(qs,qg,tg,t_ime);
      qs=up_1(6,:);
    qg=up_2(6,:);
  kine_para_v_6 = ptp_no_via_1(qs,qg,tg,t_ime);
  % qs=[X1,Y1,Z1,Alpha_1,Bita_1,Gama_1];
qs=start_n_goal_positions(1,1:3);
% qg=[X2,Y2,Z2,Alpha_2,Bita_2,Gama_2];
qg=start_n_goal_positions(2,1:3);
  kine_para = ptp_no_via_1(qs,qg,tg,t_ime);
  pos=kine_para(1:n:tg+1,:)
  v_1=kine_para_v_1(1:(((tg-0)/n)+1),:)
  v_2=kine_para_v_2(1:(((tg-0)/n)+1),:)
  v_3=kine_para_v_3(1:(((tg-0)/n)+1),:)
  v_4=kine_para_v_4(1:(((tg-0)/n)+1),:)
  v_5=kine_para_v_5(1:(((tg-0)/n)+1),:)
  v_6=kine_para_v_6(1:(((tg-0)/n)+1),:)
  v=[v_1;v_2;v_3;v_4;v_5;v_6]
  
% 0 0 26 0 0 0  we can replace start and goal pos for current analysis
% 4 5 29 30 0 0
  
 for i=1:1:(((tg-0)/n)+1) 
%-------------------------------
plot3([0 3],[0 0],[0 0],'b');        % adding global reference frame
hold on;
plot3([0 0],[0 3],[0 0],'r');
hold on;
plot3([0 0],[0 0],[0 3],'g');
hold on;

plot3(pos(i,1),pos(i,2),pos(i,3)','-ok','MarkerSize',1);   % adding 
hold on;
% %-------------------------------
down(7,:)=down(1,:);
plot3(down(:,1),down(:,2),down(:,3),'-ob','MarkerSize',6);
v(i+((((tg-0)/n)+1)*6),:)=v(i,:);
plot3(v(i:(((tg-0)/n)+1):i+((((tg-0)/n)+1)*6),1),v(i:(((tg-0)/n)+1):i+((((tg-0)/n)+1)*6),2),v(i:(((tg-0)/n)+1):i+((((tg-0)/n)+1)*6),3),'-or','MarkerSize',4);
xlim([-22,15]); ylim([-24,15]);zlim([0,pz+26+6]);
grid off;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
hold off;
pause (0.00000000000000001);
 end