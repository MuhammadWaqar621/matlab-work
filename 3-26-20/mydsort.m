
function sort_v = mydsort(V)   
for i = 1:length(V)-1     
    h_ind = i;     
    for j=i+1:length(V)         
        if V(j) > V(h_ind)             
            h_ind = j;         
        end
    end
    % Exchange elements    
    temp = V(i);     
    V(i) = V(h_ind);     
    V(h_ind) = temp; 
end
sort_v = V; 
end