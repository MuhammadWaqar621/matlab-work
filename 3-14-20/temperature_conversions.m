function [K,R,F]=temperature_conversions(f,cr,cf) 
    K=F_to_K(f);     
    R=C_to_R(cr);%calling sub function 
    F=C_to_F(cf); 
end
function k=F_to_K(f) 
    k=(5.*(f+459.67))./9; 
end
function r=C_to_R(c) 
    r=((9.*c)./5)+491.67; 
end
function F=C_to_F(c) 
    F=(9.*c)./5+32; 
end