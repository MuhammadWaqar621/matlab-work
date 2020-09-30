clc
clear all
close all
load materials.dat
load pricing.dat

while (1)
    disp('******MENU*****')
    fprintf('CHOOSE STRUCTURE:\n    1) TOWER\n     2) CRANE/WINCH\n     3) BRIDGE/SPAN\n ')
    choose_str=input('ENTER A CHOICE:');
    if (choose_str<0 || choose_str>3)
        disp('You enter the Wrong Number ')
    else
        break
    end 
end 
while(1)
    disp('******MENU*****')
    fprintf('CHOOSE MATERIAL:\n     1) ALUMINUM\n     2) STEEL\n     3) TITANIUM\n') 
    choose_mat=input('ENTER A CHOICE:');
    if(choose_mat<0 || choose_mat>3)
        disp('You enter the Wrong Number ')
    else
        break
    end 
end
a=1*10^-4;
s_f=2;
if(choose_mat==1)
    W_max=(a*materials(7))/s_f;
    W_fail=(a*materials(10))/s_f;
    deformation=((W_max)/(materials(4)*a))*100;
    mat_cost=pricing(4);
elseif (choose_mat==2)
    W_max=(a*materials(8))/s_f;
    W_fail=(a*materials(11))/s_f;
    deformation=((W_max)/(materials(5)*a))*100;
    mat_cost=pricing(5);
elseif (choose_mat==3)
    W_max=(a*materials(9))/s_f;
    W_fail=(a*materials(12))/s_f;
    deformation=((W_max)/(materials(6)*a))*100;
    mat_cost=pricing(6);
end 
if (choose_str==1)
    while (1)
        disp('******MENU*****')
        fprintf('CHOOSE A SIZE:\n      1) small  (3.3 feet)\n     2) medium (6.6 feet)\n     3) large  (16.4 feet)\n') 
        choose_size=input('ENTER A CHOICE:');
        if(choose_size<0 || choose_size>3)
            disp('You enter the Wrong Number ')
        else
            break
        end 
    end 
    if(choose_size==1)
        Footprint=3*3.3/3.28;
        h= sqrt(3)*3.3/2;
        fee=50;
%        convert into feet for final display value
    elseif(choose_size==2)
        Footprint=3*6.6/3.28;
        h= sqrt(3)*6.6/2;
        fee=100;
       
  else 
        Footprint=3*16.4/3.28;
        h= sqrt(3)*16.4/2;
        fee=250;
    end 
    Clearance=4*h/3.28;
elseif (choose_str==2)
    while(1)
        disp(['WORKING LOAD (0 < MASS <', num2str(W_max*224720),' )'])
        W=input('Enter the Working Load in lb :');
        
        if (W<0 || W>(W_max*224720))
            disp('You Enter the Wrong Working Load ')
        else 
            break
        end 
    end
%     W=W*0.071429;
if (W>5000)
    W=5000;
end  
    h= sqrt(3)*W/(2);
%     first convert into newton then meter
    Footprint=((((3*W)/4.5)/1000));
    Clearance=((((4*h)/4.5)/1000));
    fee=50;
elseif(choose_str==3)
    while (1)
        d=input(['HOW WIDE DO YOU NEED YOUR BRIDGE/SPAN? (< 164,' ,'FEET): ']);
        if ((d*1.1)>6.56 && (d*1.1)<164)
            break 
        else 
            disp('INVALID ENTRY...') 
            disp ('DISTANCE TOO LONG OR TOO SHOR')
        end 
    end 
    d=d/3.28;
    Clearance=((sqrt(3)*d)/2)/d;
    Footprint=(2*d)/sqrt(3);
    fee=52;
    increment_fee=0;
    for i=1:round(d)
        increment_=0.02*fee;
        increment_fee= increment_fee+ increment_;
    end 
    fee=fee+increment_fee
end 

disp('**********************************')
if(choose_str==1 && choose_mat==1)
    disp('YOU HAVE CHOSEN:   ALUMINUM      TOWER ')
elseif(choose_str==1 && choose_mat==2)
    disp('YOU HAVE CHOSEN:   STEEL      TOWER ')
elseif(choose_str==1 && choose_mat==3)
    disp('YOU HAVE CHOSEN:   TITANIUM      TOWER ')
    
elseif(choose_str==2 && choose_mat==1)
    disp('YOU HAVE CHOSEN:   ALUMINUM      CRANE/WINCH ')
elseif(choose_str==2 && choose_mat==2)
    disp('YOU HAVE CHOSEN:   STEEL      CRANE/WINCH ')
elseif(choose_str==2 && choose_mat==3)
    disp('YOU HAVE CHOSEN:   TITANIUM      CRANE/WINCH ')    
elseif(choose_str==3 && choose_mat==1)
    disp('YOU HAVE CHOSEN:   ALUMINUM      BRIDGE/SPAN')
elseif(choose_str==3 && choose_mat==2)
    disp('YOU HAVE CHOSEN:   STEEL      BRIDGE/SPAN ')
elseif(choose_str==3 && choose_mat==3)
    disp('YOU HAVE CHOSEN:   TITANIUM      BRIDGE/SPAN ')  
end 
if(choose_str~=2)
    W=W_max*224720;
end 
disp(['CLEARANCE: ',num2str(Clearance*3.28),' ft'])
disp(['FOOTPRINT: ',num2str(Footprint*3.28),' ft'])
disp(['MAX LOAD: ',num2str(W),' lb'])
fprintf('\n')
disp(['MAX REC LOAD :',num2str(round(W_max*224720)),' lb'])
disp(['MAX DEFORMATION: ',num2str(deformation/1000),' %'])
disp(['FAILURE LOAD: ',num2str(round(W_fail*224720)),' lb'])

if (choose_str==1)
    load geomtopo1.mat
elseif (choose_str==2)
    load geomtopo2.mat
elseif (choose_str==3)
    load geomtopo3.mat
end 
   
M=size(memnod);
c=M(2);
M=M(1);
N=size(nodmem);
N=N(1);
L=0;
for i=1:M
    if (choose_str==1)
        L=M;
        L=L*c;
        L=L+Clearance;
    elseif (choose_str==2)
        L=Footprint*3.3;
    elseif (choose_str==3)
        L=74.5 +fix(d);
    end 
    
end 

for j=1:N
    plot(x(j),y(j),'o','MarkerSize', 12,'color','k')
    text(x(j)+.09,y(j)+0.09,num2str(j),'Color', [1,0,0] )
    hold on
     for i=1:M
         if (memnod(M+i)==j)
%             disp(['Counter ',num2str(i),'=',num2str(j),' node is connetec with ',num2str(memnod(i))])
            plot([x(memnod(i)) x(j)],[y(memnod(i)) y(j)],'color','k','LineWidth',2)
            text(mean([x(memnod(i)) x(j)])+.09,mean([y(memnod(i)) y(j)])+.09,num2str(i),'Color', [0,0,1] )
            hold on 
         end 
     end 
end 
 axis equal
 axis off
 
disp('**********************************')
disp('COST: ')
disp(['MATERIALS : $',num2str(mat_cost*L)])
disp(['FEES : $ ',num2str(fee)])
disp(['TAX : $ ',num2str(mat_cost*L*.08)])
disp('----------------')
disp(['TOTAL : $ ',num2str(mat_cost*L+fee+(mat_cost*L*.08))])

Youngs_modulus=1.12*10^11 +zeros(M,1);
[Force,deformtion,Reaction]=Structure_Analysis(choose_str,N,W_max,Youngs_modulus);
Force=Force*10^6;
deformtion=deformtion*10^6;
Reaction=Reaction*10^6;
disp ('MEMBER    FORCE       DEFORMATION')
for i=1:2*N-3
    disp ([num2str(i),'      ',num2str(Force(i)), '      ', num2str(deformtion(i))])
end 
 i=1;
 disp('REACTION(N)')
for i=1:length(Reaction)
  disp(num2str(Reaction(i)))
end 
if (choose_str==1)
    save Analysis1
elseif (choose_str==2)
    save Analysis2
elseif (choose_str==3)
    save Analysis3
end 
