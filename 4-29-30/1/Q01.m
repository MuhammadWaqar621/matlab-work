
function Q01(A0,h_life,t)
left=A0*exp((-.693/h_life)*t);
disp(['The amount of radio active material ',num2str(left),' after ',num2str(t),' year'])
end 