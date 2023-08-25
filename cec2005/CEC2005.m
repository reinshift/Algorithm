%% 淘个代码 %%
% 2023/06/12 %
%微信公众号搜索：淘个代码，获取更多免费代码
%%
% CEC2005测试集

function [lb,ub,D,y] = CEC2005(F)

switch F

    case 'F1'

        y = @F1;

        lb=-100;

        ub=100;

        D=30;

    case 'F2'

        y = @F2;

        lb=-10;

        ub=10;

        D=30;

    case 'F3'

        y = @F3;

        lb=-65.536;

        ub=65.536;

        D=30;

    case 'F4'

        y = @F4;

        lb=-100;

        ub=100;

        D=30;

    case 'F5'

        y = @F5;

        lb=-30;

        ub=30;

        D=30;

    case 'F6'

        y = @F6;

        lb=-100;

        ub=100;

        D=30;

    case 'F7'

        y = @F7;

        lb=-1.28;

        ub=1.28;

        D=30;

    case 'F8'

        y = @F8;

        lb=-500;

        ub=500;

        D=30;

    case 'F9'

        y = @F9;

        lb=-5.12;

        ub=5.12;

        D=30;

    case 'F10'

        y = @F10;

        lb=-32;

        ub=32;

        D=30;

    case 'F11'

        y = @F11;

        lb=-600;

        ub=600;

        D=30;

    case 'F12'

        y = @F12;

        lb=-50;

        ub=50;

        D=30;

    case 'F13'

        y = @F13;

        lb=-50;

        ub=50;

        D=30;  

    case 'F14'

        y = @F14;

        lb=-65.536;

        ub=65.536;

        D=2;  

    case 'F15'

        y = @F15;

        lb=-5;

        ub=5;

        D=4;    

    case 'F16'

        y = @F16;

        lb=-5;

        ub=5;

        D=2; 

    case 'F17'

        y = @F17;

        lb=-5;

        ub=15;

        D=2;    

    case 'F18'

        y = @F18;

        lb=-2;

        ub=2;

        D=2;  

    case 'F19'

        y = @F19;

        lb=0;

        ub=1;

        D=3;  

    case 'F20'

        y = @F20;

        lb=0;

        ub=1;

        D=6;        

    case 'F21'

        y = @F21;

        lb=0;

        ub=10;

        D=4;      

    case 'F22'

        y = @F22;

        lb=0;

        ub=10;

        D=4;    

    case 'F23'

        y = @F23;

        lb=0;

        ub=10;

        D=4;            

end



end



% F1



function o = F1(x)

o=0;

for i=1:30

    sum1_1=x(i)^2;

    o=o+ sum1_1;

end

end



% F2



function o = F2(x)

sum2_2=0;

for i=1:30

    sum2_1=abs(x(i));

    sum2_2=sum2_2+sum2_1;

end

o=sum2_2+prod(abs(x));

end



% F3



function o = F3(x)

o=0;

sum3_2=0;

for i=1:30

    for j=1:i 

   sum3_2=sum3_2+x(j);

    end

    o=o+(sum3_2)^2;

end

end



% F4



function o = F4(x)

o=max(abs(x));

end



% F5



function o = F5(x)

o=0;

for i=1:29

    sum5_1=100*(x(i+1)-x(i)^2)^2+(x(i)-1)^2;

    o=o+sum5_1;

end

end



% F6



function o = F6(x)

o=0;

for i=1:30

    sum6_1=(floor((x(i)+0.5)))^2;

    o=o+ sum6_1;

end

end



% F7



function o = F7(x)

sum7_1=0;

for i=1:30

    sum7_1=i*x(i)^4+sum7_1;

end

o=sum7_1+rand();

end



% F8



function o = F8(x)

o=0;

for i=1:30

    sum8_1=-x(i)*sin(sqrt(abs(x(i))));

    o=o+ sum8_1;

end

end



% F9



function o = F9(x)

o=0;

for i=1:30

    sum9_1=x(i)^2-10*cos(2*pi*x(i))+10;

    o=o+sum9_1;

end

end



% F10



function o = F10(x)

sum10_1=0;

sum10_2=0;

for i= 1:30

    sum10_1=sum10_1+x(i)^2;

end

for i=1:30

    sum10_2=sum10_2+cos(2*pi* x(i));

end

o=-20*exp(-0.2*sqrt(sum10_1/30))-exp(sum10_2/30)+20+exp(1);

end



% F11



function o = F11(x)

sum11_1=0;

for i=1:30

    sum11_1=sum11_1+x(i)^2;

end

y=zeros(1,30);

for i=1:30

    y(i)=cos(x(i)/sqrt(i));

end

o=(1/4000)*sum11_1-prod(y)+1;

end



% F12



function o = F12(x)

a=10;

k=100;

m=4;

u=zeros(1,30);

for i=1:30

    if x(i)>a

        u(i)=k*(x(i)-a)^m;

    else

        if x(i)>=-a&&x(i)<=a

            u(i)=0;

        else

            u(i)=k*(-x(i)-a)^m;

        end

    end

end

U=sum(u);

y=zeros(1,30);

for i=1:30

    y(i)=1+(x(i)+1)/4;

end

sum12_1=0;

for i=1:29

    sum12_2=((y(i)-1)^2)*(1+10*(sin(pi*y(i+1)))^2);

    sum12_1=sum12_1+ sum12_2;

end

o=(pi/30)*(10*(sin(pi*y(1))^2)+sum12_1+(y(30)-1)^2)+U;

end



% F13



function o = F13(x)

a=5;

k=100;

m=4;

u=zeros(1,30);

for i=1:30

    if x(i)>a

        u(i)=k*(x(i)-a)^m;

    else

        if x(i)>=-a&&x(i)<=a

            u(i)=0;

        else

            u(i)=k*(-x(i)-a)^m;

        end

    end

end

U=sum(u);

sum13_1=0;

for i=1:29

    sum13_2=((x(i)-1)^2)*(1+(sin(3*pi*x(i+1)))^2+((x(30)-1)^2)*(1+(sin(2*pi*x(i+1)))^2));

    sum13_1=sum13_1+ sum13_2;

end

o=0.1*((sin(3*pi*x(1)))^2+sum13_1)+U;

end



% F14



function o = F14(x)

A=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;...

-32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32]; %2×25

sum_A=0;

sum_B=0;

for j=1:25

    for i=1:2

        sum_B=sum_B+(x(i)-A(i,j))^6;

    end

    sum_A=sum_A+1/(j+sum_B);

end

o=(1/500+sum_A).^(-1);

end



% F15



function o = F15(x)

aK=[0.1957 0.1947 0.1735 0.16 0.0844 0.0627 0.0456 0.0342 0.0323 0.0235 0.0246]; %1×11

bK=[0.25 0.5 1 2 4 6 8 10 12 14 16];

bK=1./bK;

o=0;

for i=1:11

    sum15_1=(aK(i)-(x(1)*(bK(i)^2+bK(i)*x(2)))/(bK(i)^2+bK(i)*x(3)+x(4)))^2;

    o=o+sum15_1;

end

end



% F16



function o = F16(x)

o=4*x(1)^2-2.1*x(1)^4+(x(1)^6)/3+x(1)*x(2)-4*x(2)^2+4*x(2)^4;

end



% F17



function o = F17(x)

%y=unifrnd(10,15);

o=(x(2)-(x(1)^2)*5.1/(4*(pi^2))+5/pi*x(1)-6)^2+10*(1-1/(8*pi))*cos(x(1))+10;

end



% F18



function o = F18(x)

o=(1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*(x(1)^2)-14*x(2)+6*x(1)*x(2)+3*x(2)^2))*(30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*(x(1)^2)+48*x(2)-36*x(1)*x(2)+27*(x(2)^2)));

end



% F19



function o = F19(x)

A_H=[3 10 30;0.1 10 35;3 10 30;0.1 10 35];%4×3

C_H=[1 1.2 3 3.2]; %1×4

P_H=[0.3689 0.1170 0.2673;0.4699 0.4387 0.7470;0.1091 0.8732 0.5547;0.03815 0.5743 0.8828]; %4×3

sum19_1=0;

o=0;

for k=1:4

    for j=1:3

        sum19_2=-A_H(k,j)*(x(j)-P_H(k,j))^2;

        sum19_1=sum19_1+sum19_2;

    end

    sum19_3=-C_H(k)*exp(sum19_1);

    o=o+sum19_3;

    sum19_1=0;

end

end



% F20



function o = F20(x)

aH=[10 3 17 3.5 1.7 8;0.05 10 17 0.1 8 14;3 3.5 1.7 10 17 8;17 8 0.05 10 0.1 14];

cH=[1 1.2 3 3.2];

pH=[0.1312 0.1696 0.5569 0.0124 0.8283 0.5886;0.2329 0.4135 0.8307 0.3736 0.1004 0.9991;...

0.2348 0.1415 0.3522 0.2883 0.3047 0.6650;0.4047 0.8828 0.8732 0.5743 0.1091 0.0381];

o=0;

sum20_1=0;

for i=1:4

    for j=1:6

        sum20_2=-aH(i,j)*(x(j)-pH(i,j))^2;

        sum20_1=sum20_1+sum20_2;

    end

    sum20_3=-cH(i)*exp(sum20_1);

    o=o+sum20_3;

    sum20_1=0;

end

end



% F21



function o = F21(x)

aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6]; %10×4

cSH=[0.1 0.2 0.2 0.4 0.4 0.6 0.3 0.7 0.5 0.5]; %1×10

sum21_1=0;

m=5;

for i=1:m

    sum21_2=-((x-aSH(i))*(x-aSH(i))'+cSH(i))^-1;

    sum21_1=sum21_1+sum21_2;

end

o= sum21_1;

end



% F22



function o = F22(x)

aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6]; %10×4

cSH=[0.1 0.2 0.2 0.4 0.4 0.6 0.3 0.7 0.5 0.5]; %1×10

sum22_1=0;

m=7;

for i=1:m

    sum22_2=-((x-aSH(i))*(x-aSH(i))'+cSH(i))^-1;

    sum22_1=sum22_1+sum22_2;

end

o= sum22_1;

end



% F23



function o = F23(x)

aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6]; %10×4

cSH=[0.1 0.2 0.2 0.4 0.4 0.6 0.3 0.7 0.5 0.5]; %1×10

sum23_1=0;

m=10;

for i=1:m

    sum23_2=-((x-aSH(i))*(x-aSH(i))'+cSH(i))^-1;

    sum23_1=sum23_1+sum23_2;

end

o= sum23_1;

end


