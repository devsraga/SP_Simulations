%% ptp_no_via_1
function kine_para = ptp_no_via_1 (qs,qg,tg,t_ime)
%qt=qs+((3/(tg)^2)*(qg-qs))*t_ime.^2-((2/(tg)^3)*(qg-qs))*t_ime.^3;
%qtv=(2*(3/tg^2)*(qg-qs))*t_ime-(3*(2/tg^3)*(qg-qs))*t_ime.^2;
%qta=(2*(3/tg^2)*(qg-qs))-(6*(2/tg^3)*(qg-qs))*t_ime;
qt=qs+((3/(tg)^2)*(qg-qs)).*(t_ime.^2)'-((2/(tg)^3)*(qg-qs)).*(t_ime.^3)';
qtv=(2*(3/tg^2)*(qg-qs)).*(t_ime)'-(3*(2/tg^3)*(qg-qs)).*(t_ime.^2)';
qta=(2*(3/tg^2)*(qg-qs))-(6*(2/tg^3)*(qg-qs)).*(t_ime)';
kine_para=[qt;qtv;qta];
end

