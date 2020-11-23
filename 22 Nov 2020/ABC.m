function out = ABC(x0,h,m,varargin)
 switch nargin
     case 3
        u = 1e-1;
        k=1e-6;
     case 4
        last=cell2mat(varargin);
        u=last(1);
        k=last(2);
         
 end 
 m0=0;
 T=[m0:m];
 N=(m-m0)/h;
 out=zeros(N+1,1);
 out(1)=x0;
 for i=1:N
     temp= fzero (@(temp) temp-out(i)-h*(u*temp-k*temp^2),out(i));
     T(i+1)=T(i)+h;
    out(i+1)=temp; 
 end
 format bank
out=round(out');
 
end