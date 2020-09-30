
function radio_active_life(initial,k,t)
remain=initial*exp((-.693/k)*t);
disp(['The amount of radio active material ',num2str(remain),' left after ',num2str(t),' year'])
end 