% sp_inv_k_vertises
function Vertises = sp_inv_k_vertises (px,py,pz,alpha,bita,gama)

%===================================%
% Constant values
%===================================%
% a=8.75;
% b=12.0;
% d=10.957;
% t=5.5;
a=8;
b=9;
d=3;
t=2;
pz=26.0+pz;
%==================================%
%calculating sin and cos values.
%==================================%
c1=cosd(alpha);
c2=cosd(bita);
c3=cosd(gama);
s1=sind(alpha);
s2=sind(bita);
s3=sind(gama);
%==================================%
% coordinate of base vertises.
%==================================%
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
%==================================%
% coordinate of upper vertises.
%==================================%
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
T1=[U1;V1;W1;1];
T2=[U2;V2;W2;1];
T3=[U3;V3;W3;1];
T4=[U4;V4;W4;1];
T5=[U5;V5;W5;1];
T6=[U6;V6;W6;1];
TT=[T1';T2';T3';T4';T5';T6'];
%disp(TT);
%==================================%
% Transformation matrix.
%==================================%
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%T=[c2.*c3+s1.*s2.*s3,-(c2.*s3)+s1.*s2.*s3,c1.*s2,px;c1.*s3,c1.*c3,-s1,py;(-s2).*c3+s1.*c2.*s3,s2.*s3+s1.*c2.*c3,c1.*c2,pz;0,0,0,1];
%disp(T);
%===================================================%
% coordinate of upper vertises withrespect to origin.
%===================================================%
b1=T*[U1;V1;W1;1];
b2=T*[U2;V2;W2;1];
b3=T*[U3;V3;W3;1];
b4=T*[U4;V4;W4;1];
b5=T*[U5;V5;W5;1];
b6=T*[U6;V6;W6;1];
B=[b1';b2';b3';b4';b5';b6'];
%disp(B);
Vertises=[A(:,1:3);B(:,1:3)];
end

%endfunction
