%% 淘个代码 %%
% 2023/06/16 %
%微信公众号搜索：淘个代码，获取更多免费代码
%%

%%
clear
clc
close all
addpath(genpath(pwd))
number='F15'; %选定优化函数，自行替换:F1~F23
[lb,ub,D,y]=CEC2005(number);  % [lb,ub,D,y]：下界、上界、维度、目标函数表达式
MaxIteration=1000;  %最大迭代次数
Solution_no=50;  %种群规模
%调用SDO算法
% [BestX,BestF,HisBestF]=SDO(y,MarketSize,MaxIteration,lb,ub,D);

[BestF,BestX,HisBestF]=AOA(Solution_no,MaxIteration,lb,ub,D,y); % Call the AOA 
subplot(1,2,1)
func_plot(number)
title(number)
xlabel('x')
ylabel('y')
zlabel('z')
subplot(1,2,2)
CNT=50;
k=round(linspace(1,MaxIteration,CNT)); %随机选50个点
% 注意：如果收敛曲线画出来的点很少，随机点很稀疏，说明点取少了，这时应增加取点的数量，100、200、300等，逐渐增加
% 相反，如果收敛曲线上的随机点非常密集，说明点取多了，此时要减少取点数量
iter=1:1:MaxIteration;
semilogy(iter(k),HisBestF(k),'m-x','linewidth',1);
grid on;
title(['函数收敛曲线',number])
xlabel('Iterations');
ylabel('Objective function value');
box on
legend('AOA')
set (gcf,'position', [200,300,700,300])

 
 
 




