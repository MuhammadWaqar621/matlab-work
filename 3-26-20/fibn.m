
function out = fibn(n) 
  if n == 0     
      out = 0; 
  elseif n == 1     
      out = 1; 
  else
      out = fibn(n-2) + fibn(n-1); 
  end
end