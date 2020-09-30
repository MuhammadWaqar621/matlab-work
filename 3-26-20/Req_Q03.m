
function R_eq = Req_Q03(resistances) 
R_eq = 0; 
for i = 1:length(resistances)     
    R_eq =R_eq + resistances(i).^-1;
end
R_eq=R_eq^-1;
end 