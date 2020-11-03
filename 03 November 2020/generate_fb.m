function generate_fb(val)
    fibf(1) = 0;
    fibf(2) = 1;
    n=3;
    while (1)
      fibf(n) = fibf(n-1)+fibf(n-2);
      n=n+1;
      if (fibf(n-1)>val)
          break
      end 
    end
    fibf
end 