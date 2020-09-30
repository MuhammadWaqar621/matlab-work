function y1=trajectory(x1,v0,theta)
    g=9.8;
    y1=x1*tand(theta)- ((g*x1^2)/(2*v0^2*cosd(theta)^2));
end 
