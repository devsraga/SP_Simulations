%% P1
clc
clear all
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
a=10;
b=15;
d=3;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*a;
U2=-(((sqrt(3))/3)*a);
U3=((sqrt(3))/6)*a;
V1=.5*a;
V2=0;
V3=(-.5*a);
W1=0;
W2=0;
W3=0;
% coordinate of top points with respect to bottom point.
%Taking input angle thita1, thita2, thita3 from user.
alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
px=0;
py=0;
pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U1;V1;W1;1];
b3=T*[U2;V2;W2;1];
b4=T*[U2;V2;W2;1];
b5=T*[U3;V3;W3;1];
b6=T*[U3;V3;W3;1];
B=[b1';b2';b3';b4';b5';b6'];
disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
disp(L1);
L=[L1,L2,L3,L4,L5,L6];
disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);

B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);

for i=1:7
AB=[A(i,:);B(i,:)];
%disp(A);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'g');
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.0001);
%% P2
clc
clear all
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
px=0;
py=0;
pz=13;
px2=2;
py2=2;
pz2=14;
alpha_degree=0;
bita_degree=0;
gama_degree=0;
alpha_degree2=22;
bita_degree2=20;
gama_degree2=30;
l=100;
% coordinate of top points with respect to bottom point.
for j=0:1:l
a=10;
b=15;
d=3;
pz=13;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*a;
U2=-(((sqrt(3))/3)*a);
U3=((sqrt(3))/6)*a;
V1=.5*a;
V2=0;
V3=(-.5*a);
W1=0;
W2=0;
W3=0;
px=(px2/l)*j;
py=(py2/l)*j;
pz=pz+((pz2-pz)/l)*j;
disp(px);
disp(py);
disp(pz);
alpha_degree=(alpha_degree2/l)*j;
bita_degree=(bita_degree2/l)*j;
gama_degree=(gama_degree2/l)*j;
disp(alpha_degree);
disp(alpha_degree);
disp(alpha_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U1;V1;W1;1];
b3=T*[U2;V2;W2;1];
b4=T*[U2;V2;W2;1];
b5=T*[U3;V3;W3;1];
b6=T*[U3;V3;W3;1];
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'g');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end
%% SP inverse kinematic improved program 06/07/2019.
clc
clear all
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
v0=input('Enter the velocity of point=');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=6;
pz2=9;
t1=px2;
t2=py2;
t3=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=25;
bita_degree2=5;
gama_degree2=60;
t4=alpha_degree2;
t5=bita_degree2;
t6=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=0:v0:l
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
pz=11;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0;
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=(px2/l)*j;
py=(py2/l)*j;
pz=pz+((pz2-pz)/l)*j;
alpha_degree=(alpha_degree2/l)*j;
bita_degree=(bita_degree2/l)*j;
gama_degree=(gama_degree2/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end
px=0;
py=0;
pz=11;
px2=2;
py2=0;
pz2=11;
alpha_degree=0;
bita_degree=0;
gama_degree=0;
alpha_degree2=5;
bita_degree2=5;
gama_degree2=60;
fprintf('\n=========================================================================================================\n');
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
fprintf('%f,%f,%f,%f,%f,%f\n',t1,t2,t3,t4,t5,t6);

%% P4 Multiple point movment 07/June/2019.
clc
clear all
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=13;
t1=px2;
t2=py2;
t3=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=60;
t4=alpha_degree2;
t5=bita_degree2;
t6=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=0:1:l
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
pz=11;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points with respect to {u v w}.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0;
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=(px2/l)*j;
py=(py2/l)*j;
pz=pz+((pz2-pz)/l)*j;
alpha_degree=(alpha_degree2/l)*j;
bita_degree=(bita_degree2/l)*j;
gama_degree=(gama_degree2/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%1==========================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=2;
py2=2;
pz2=5;
t7=px2;
t8=py2;
t9=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=60;
t10=alpha_degree2;
t11=bita_degree2;
t12=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t1-px2)/l)*j;
py=py2+((t2-py2)/l)*j;
pz=pz2+((t3-pz2)/l)*j;
alpha_degree=alpha_degree2+((t4-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t5-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t6-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%2=====================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=11;
t13=px2;
t14=py2;
t15=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=0;
t16=alpha_degree2;
t17=bita_degree2;
t18=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t7-px2)/l)*j;
py=py2+((t8-py2)/l)*j;
pz=pz2+((t9-pz2)/l)*j;
alpha_degree=alpha_degree2+((t10-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t11-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t12-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end
px=0;
py=0;
pz=11;
alpha_degree=0;
bita_degree=0;
gama_degree=0;
fprintf('\n=========================================================================================================\n');
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
fprintf('%f,%f,%f,%f,%f,%f\n',t1,t2,t3,t4,t5,t6);
fprintf('%f,%f,%f,%f,%f,%f\n',t7,t8,t9,t10,t11,t12);
fprintf('%f,%f,%f,%f,%f,%f\n',t13,t14,t15,t16,t17,t18);
%% Dev multiple movement program 2 ##############################################################################
% 0================================================================================
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the s ide length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=13;
t1=px2;
t2=py2;
t3=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=60;
t4=alpha_degree2;
t5=bita_degree2;
t6=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=0:1:l
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
pz=11;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0;
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=(px2/l)*j;
py=(py2/l)*j;
pz=pz+((pz2-pz)/l)*j;
alpha_degree=(alpha_degree2/l)*j;
bita_degree=(bita_degree2/l)*j;
gama_degree=(gama_degree2/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%1==========================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=2;
py2=2;
pz2=5;
t7=px2;
t8=py2;
t9=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=60;
t10=alpha_degree2;
t11=bita_degree2;
t12=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t1-px2)/l)*j;
py=py2+((t2-py2)/l)*j;
pz=pz2+((t3-pz2)/l)*j;
alpha_degree=alpha_degree2+((t4-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t5-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t6-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%2=====================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=11;
t13=px2;
t14=py2;
t15=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=0;
t16=alpha_degree2;
t17=bita_degree2;
t18=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t7-px2)/l)*j;
py=py2+((t8-py2)/l)*j;
pz=pz2+((t9-pz2)/l)*j;
alpha_degree=alpha_degree2+((t10-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t11-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t12-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

% 3=======================================================================================================================
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=11;
t19=px2;
t20=py2;
t21=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=35;
bita_degree2=0;
gama_degree2=0;
t22=alpha_degree2;
t23=bita_degree2;
t24=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=0:1:l
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
pz=11;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0;
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=(px2/l)*j;
py=(py2/l)*j;
pz=pz+((pz2-pz)/l)*j;
alpha_degree=(alpha_degree2/l)*j;
bita_degree=(bita_degree2/l)*j;
gama_degree=(gama_degree2/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%1==========================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=2;
py2=2;
pz2=5;
t25=px2;
t26=py2;
t27=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=30;
gama_degree2=0;
t28=alpha_degree2;
t29=bita_degree2;
t30=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t19-px2)/l)*j;
py=py2+((t20-py2)/l)*j;
pz=pz2+((t21-pz2)/l)*j;
alpha_degree=alpha_degree2+((t22-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t23-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t24-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%2=====================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=11;
t31=px2;
t32=py2;
t33=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=0;
t34=alpha_degree2;
t35=bita_degree2;
t36=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t25-px2)/l)*j;
py=py2+((t26-py2)/l)*j;
pz=pz2+((t27-pz2)/l)*j;
alpha_degree=alpha_degree2+((t28-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t29-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t30-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end
% ### 4=======================================================================================================================
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=5;
pz2=11;
t37=px2;
t38=py2;
t39=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=0;
t40=alpha_degree2;
t41=bita_degree2;
t42=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=0:1:l
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
pz=11;
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0;
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=(px2/l)*j;
py=(py2/l)*j;
pz=pz+((pz2-pz)/l)*j;
alpha_degree=(alpha_degree2/l)*j;
bita_degree=(bita_degree2/l)*j;
gama_degree=(gama_degree2/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%1==========================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=5;
pz2=6;
t43=px2;
t44=py2;
t45=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=30;
gama_degree2=0;
t46=alpha_degree2;
t47=bita_degree2;
t48=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t37-px2)/l)*j;
py=py2+((t38-py2)/l)*j;
pz=pz2+((t39-pz2)/l)*j;
alpha_degree=alpha_degree2+((t40-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t41-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t42-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;
pause (0.00001);
end

%2=====================================================================
pause (0.01);
%d=input('Enter the smaller semireguler side length of base hexagon');
%b=input('Enter the bigger semireguler side length of base hexagon');
%a=input('Enter the side length of top equilateral trangle');
%px=0;
%py=0;
%pz=11;
px2=0;
py2=0;
pz2=11;
t49=px2;
t50=py2;
t51=pz2;
%alpha_degree=0;
%bita_degree=0;
%gama_degree=0;
alpha_degree2=0;
bita_degree2=0;
gama_degree2=0;
t52=alpha_degree2;
t53=bita_degree2;
t54=gama_degree2;
l=100;
% coordinate of top points with respect to bottom point.
for j=l:-1:0
plot3([0 3],[0 0],[0 0],'b');
hold on;
plot3([0 0],[0 3],[0 0],'b');
hold on;
plot3([0 0],[0 0],[0 3],'b');
hold on;
a=8;
b=15;
d=3;
t=2;
%pz=11; %..........................
% coordinate of base points.

X1=((sqrt(3))/6)*(2*b+d);
X2=(-((sqrt(3))/6)*(b-d));
X3=-(((sqrt(3))/6)*(b+2*d));
X4=(-((sqrt(3))/6)*(b+2*d));
X5=-(((sqrt(3))/6)*(b-d));
X6=((sqrt(3))/6)*(2*b+d);
Y1=.5*d;
Y2=.5*(b+d);
Y3=.5*b;
Y4=((-.5)*b);
Y5=-(.5*(b+d));
Y6=-(.5*d);
Z1=0;
Z2=0;
Z3=0;
Z4=0;
Z5=0;
Z6=0;
a1=[X1;Y1;Z1;1];
a2=[X2;Y2;Z2;1];
a3=[X3;Y3;Z3;1];
a4=[X4;Y4;Z4;1];
a5=[X5;Y5;Z5;1];
a6=[X6;Y6;Z6;1];
A=[a1';a2';a3';a4';a5';a6'];
%disp(A);

%  coordinate of top points.
U1=((sqrt(3))/6)*(2*a+t);
U2=(-((sqrt(3))/6)*(a-t));
U3=-(((sqrt(3))/6)*(a+2*t));
U4=(-((sqrt(3))/6)*(a+2*t));
U5=-(((sqrt(3))/6)*(a-t));
U6=((sqrt(3))/6)*(2*a+t);
V1=.5*t;
V2=.5*(a+t);
V3=.5*a;
V4=((-.5)*a);
V5=-(.5*(a+t));
V6=-(.5*t);
W1=0; %.................................... 11 is maxZ.
W2=0;
W3=0;
W4=0;
W5=0;
W6=0;
%
%U1=((sqrt(3))/6)*a;
%U2=-(((sqrt(3))/3)*a);
%U3=((sqrt(3))/6)*a;
%V1=.5*a;
%V2=0;
%V3=(-.5*a);
%W1=0;
%W2=0;
%W3=0;
px=px2+((t43-px2)/l)*j;
py=py2+((t44-py2)/l)*j;
pz=pz2+((t45-pz2)/l)*j;
alpha_degree=alpha_degree2+((t46-alpha_degree2)/l)*j;
bita_degree=bita_degree2+((t47-bita_degree2)/l)*j;
gama_degree=gama_degree2+((t48-gama_degree2)/l)*j;
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
%Taking input angle thita1, thita2, thita3 from user.
%alpha_degree=input('enter rotation angle thita1 about principle axis X = ');
%alpha_degree=20;
%converting degree into radians.
alpha=(alpha_degree*3.14/180);
%bita_degree=input('enter rotation angle thita2 about principle axis Y = ');
%bita_degree=25;
%converting degree into radians.
bita=(bita_degree*3.14/180);
%gama_degree=input('enter rotation angle thita3 about principle axis Z = ');
%gama_degree=10;
%converting degree into radians.
gama=(gama_degree*3.14/180);
%calculating sin and cos values.
c1=cos(alpha);
c2=cos(bita);
c3=cos(gama);
s1=sin(alpha);
s2=sin(bita);
s3=sin(gama);
% taking achivable position;
%px=0;
%py=0;
%pz=13;
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%disp(T);
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
b0=[px;py;pz];
c1=[px+1.5;py;pz];
plot3(c1(1,1),c1(2,1),c1(3,1),'r');
hold on;
c2=[px;py+1.5;pz];
plot3(c2(1,1),c2(2,1),c2(3,1),'r');
hold on;
c3=[px;py;pz+1.5];
plot3(c3(1,1),c3(2,1),c3(3,1),'r');
hold on;
plot3(b0(1,1),b0(2,1),b0(3,1),'or','MarkerSize',3);
hold on;
bc1=[b0(:,1),c1(:,1)];
plot3(bc1(1,:),bc1(2,:),bc1(3,:),'r');
hold on;
bc2=[b0(:,1),c2(:,1)];
plot3(bc2(1,:),bc2(2,:),bc2(3,:),'r');
hold on;
bc3=[b0(:,1),c3(:,1)];
plot3(bc3(1,:),bc3(2,:),bc3(3,:),'r');
hold on;
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
%L=sqrt((ax-bx)�2+(ay-by)�2+(az-bz)�2)
L1=sqrt((abs(a1(1)-b1(1)))^2+(abs(a1(2)-b1(2)))^2+(abs(a1(3)-b1(3)))^2);
L2=sqrt((abs(a2(1)-b2(1)))^2+(abs(a2(2)-b2(2)))^2+(abs(a2(3)-b2(3)))^2);
L3=sqrt((abs(a3(1)-b3(1)))^2+(abs(a3(2)-b3(2)))^2+(abs(a3(3)-b3(3)))^2);
L4=sqrt((abs(a4(1)-b4(1)))^2+(abs(a4(2)-b4(2)))^2+(abs(a4(3)-b4(3)))^2);
L5=sqrt((abs(a5(1)-b5(1)))^2+(abs(a5(2)-b5(2)))^2+(abs(a5(3)-b5(3)))^2);
L6=sqrt((abs(a6(1)-b6(1)))^2+(abs(a6(2)-b6(2)))^2+(abs(a6(3)-b6(3)))^2);
%disp(L1);
L=[L1,L2,L3,L4,L5,L6];
%disp(L);
A(7,:)=A(1,:);
plot3(A(:,1),A(:,2),A(:,3),'-ob','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
B(7,:)=B(1,:);
hold on;
plot3(B(:,1),B(:,2),B(:,3),'-or','MarkerSize',3);
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
for o=1:7
AB=[A(o,:);B(o,:)];
%disp(AB);
hold on;
plot3(AB(:,1),AB(:,2),AB(:,3),'c');
xlim([-15,15]); ylim([-15,15]);zlim([0,20]);
grid on;
grid MINOR;
xlabel('x-axis');
ylabel ('y-axis');
zlabel('z-axis');
end
hold off;4
pause (0.00001);
end
px=0;
py=0;
pz=11;
alpha_degree=0;
bita_degree=0;
gama_degree=0;
fprintf('\n=========================================================================================================\n');
fprintf('%f,%f,%f,%f,%f,%f\n',px,py,pz,alpha_degree,bita_degree,gama_degree);
fprintf('%f,%f,%f,%f,%f,%f\n',t1,t2,t3,t4,t5,t6);
fprintf('%f,%f,%f,%f,%f,%f\n',t7,t8,t9,t10,t11,t12);
fprintf('%f,%f,%f,%f,%f,%f\n',t13,t14,t15,t16,t17,t18);
fprintf('%f,%f,%f,%f,%f,%f\n',t19,t20,t21,t22,t23,t24);
fprintf('%f,%f,%f,%f,%f,%f\n',t25,t26,t27,t28,t29,t30);
fprintf('%f,%f,%f,%f,%f,%f\n',t31,t32,t33,t34,t35,t36);
fprintf('%f,%f,%f,%f,%f,%f\n',t37,t38,t39,t40,t41,t42);
fprintf('%f,%f,%f,%f,%f,%f\n',t43,t44,t45,t46,t47,t48);
fprintf('%f,%f,%f,%f,%f,%f\n',t49,t50,t51,t52,t53,t54);
