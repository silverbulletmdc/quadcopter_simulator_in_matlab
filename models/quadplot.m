function quadplot3(center,theta,inputs)
%% 绘制一个四旋翼
%   center  质心
%   theta   转角
%   input   电机输出量
size1 = [0.5,0.05,0.05];
size2 = [0.05,0.5,0.05];
start1 = [-0.25,-0.025,-0.025];
start2 = [-0.025,-0.25,-0.025];
%两个机架
boxplot3(center,theta,'r',size1,start1);
boxplot3(center,theta,'r',size2,start2);
%四个电机
boxplot3(center,theta,'p',[0.05,0.05,inputs(1)/10],[0.25-0.025,-0.025,0.025]);
boxplot3(center,theta,'y',[0.05,0.05,inputs(2)/10],[-0.025,0.25-0.025,0.025]);
boxplot3(center,theta,'y',[0.05,0.05,inputs(3)/10],[-0.25,-0.025,0.025]);
boxplot3(center,theta,'b',[0.05,0.05,inputs(4)/10],[-0.025,-0.25,0.025]);
hold off;
end