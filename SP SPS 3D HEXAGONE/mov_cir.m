% move in circle
function mov_cir(radius,intencity)

cir_m = [];
    for cir_x = -radius:intencity: radius
        cir_y =sqrt(radius^2-cir_x^2);
        cir = [cir_x, cir_y, -cir_x, -cir_y, cir_y, cir_x, -cir_y, cir_x];
        cir_m = [cir_m;cir];
    end
list = [cir_m(:,1), cir_m(:,2); cir_m(:,3), cir_m(:,4); cir_m(:,5),cir_m(:,6);cir_m(:,7), cir_m(:,8)];
list = [list, zeros(length(list),4)];
ind = size(list);
    for i = 1:1:ind(1)/2-1
    qs = list(i,:);
    qg = list(i+1,:);
    n=.5;
    tg=8;
    t_ime=[0:n:tg];

    M = ptp_no_via_1(qs,qg,tg,t_ime);
%     disp(M)
%     disp(M(1,:))
        for i = 1:length(M)/3
        pos = M(i,:);
        px=pos(1); py=pos(2); pz=pos(3); alpha=pos(4); bita=pos(5); gama=pos(6);
            if i <= ind(1)/2
            sp_pos_3Dplot (px,py,pz,alpha,bita,gama,1);
            else
               sp_pos_3Dplot (px,py,pz,alpha,bita,gama,0);
            end
        pause (0.000001);

        end
          hold on;
            dx = 5;
        for j = i:1:i+dx
            if j >= ind/2-dx
                
            else
            plot3(list(j,1),list(j,2),list(j,3),'--.k', 'LineWidth', 2, 'MarkerSize', 4);
            end
            hold on;
        end
    end
end