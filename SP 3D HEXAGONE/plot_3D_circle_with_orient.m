% #D circle plot with orientation:
function plot_3D_circle_with_orient(radius,intencity, cir_z, px,py,pz,alpha,bita,gama)
pz = pz + 26; 
disp(cir_z)
for cir_x = -radius:intencity: radius
    cir_y =sqrt(radius^2-cir_x^2);
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
    %disp(T);

%     disp([cir_x,cir_y])
    un_t_pos = [cir_x, cir_y, cir_z, 1];
    disp(un_t_pos);
    Transformed_pos = T*un_t_pos';
    disp(Transformed_pos);
    cir_x = Transformed_pos(1);
    cir_y = Transformed_pos(2);
    cir_z = Transformed_pos(3);
   
    plot3(cir_x,cir_y,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    cir_z = 0;
    un_t_pos = [cir_x, -cir_y, cir_z, 1];
    disp(un_t_pos);
    Transformed_pos = T*un_t_pos';
    disp(Transformed_pos);
    cir_x = Transformed_pos(1);
    cir_y = Transformed_pos(2);
    cir_z = Transformed_pos(3);


    plot3(cir_x,cir_y,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
    hold on;
    
%     plot3(cir_y,cir_x,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
%     hold on;
%     plot3(-cir_y,cir_x,cir_z,'--.k', 'LineWidth', 2, 'MarkerSize', 1);
%     hold on;
cir_z = 0;
end
end