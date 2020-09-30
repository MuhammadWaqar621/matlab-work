function decison = PartBQ02(left,forward,right) 
    allowed_dist = 20; 
    % start with checking the forward 
    if forward >= allowed_dist 
        decison = 'F'; 
        % check for both left and right being allowed 
    elseif left >= allowed_dist && right >= allowed_dist 
        % decide on the furthest 
        if left > right 
            decison = 'L'; 
        elseif left < right 
            decison = 'R';
        else
            % equal, 
            % choose right 
            decison = 'R'; 
        end
        % check left alone 
    elseif left >= allowed_dist 
        decison = 'L'; 
        % check right alone    
    elseif right >= allowed_dist 
        decison = 'R'; 
    else % no direction is allowed 
        decison = 'S';
    end
end
