%%% get_maxheight.m %%%
function mh=get_maxheight(v0,theta)
    mh=(v0*v0*sind(theta)*sind(theta))/(2*9.8);
end
