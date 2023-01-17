% adding moving ref frame
function moving_ref_frame_3D(px,py,pz,alpha,bita,gama)
pz = pz + 26;
linewidth = 1;
R = [0 0 0 1;3 0 0 1;0 3 0 1;0 0 3 1];

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
% Transformation matrix.
%==================================%
T=[c2*c3+s1*s2*s3,-(c2*s3)+s1*s2*s3,c1*s2,px;c1*s3,c1*c3,-s1,py;(-s2)*c3+s1*c2*s3,s2*s3+s1*c2*c3,c1*c2,pz;0,0,0,1];
%T=[c2.*c3+s1.*s2.*s3,-(c2.*s3)+s1.*s2.*s3,c1.*s2,px;c1.*s3,c1.*c3,-s1,py;(-s2).*c3+s1.*c2.*s3,s2.*s3+s1.*c2.*c3,c1.*c2,pz;0,0,0,1];
r1  = T*R(1,:)';
r2  = T*R(2,:)';
r3  = T*R(3,:)';
r4  = T*R(4,:)';
r = [r1, r2, r3, r4];
disp(r)

plot3([r1(1) r2(1)],[r1(2) r2(2)],[r1(3) r2(3)],'b', 'LineWidth', linewidth);
hold on;
plot3([r1(1) r3(1)],[r1(2) r3(2)],[r1(3) r3(3)],'k', 'LineWidth', linewidth);
hold on;
plot3([r1(1) r4(1)],[r1(2) r4(2)],[r1(3) r4(3)],'r', 'LineWidth', linewidth);
hold on;
end