function T_avg = avgTemp(T_mean, T_peak, t_start, t_end)
omega = 2*pi/365; 
t = t_start:t_end;
t_peak = 205; 
T = T_mean+(T_peak-T_mean)*cos(omega*(t-t_peak)); 
T_avg = mean(T);
end
