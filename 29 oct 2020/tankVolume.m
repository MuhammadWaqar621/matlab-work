function vol = tankVolume(R,d)
    % computes the volume of the tank
    %  R - radius
    %  d - height of the filled part
    if d < R 
        vol = pi*d^3/3;
    elseif d <= 3*R
        vol1 = pi*R^3/3;
        vol2 = pi*R^2*(d-R);
        vol = vol1+vol2;
    else
        error('overtop')
    end
end 