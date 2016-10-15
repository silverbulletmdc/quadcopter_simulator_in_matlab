function flag = boxplot3(center,rotate,color,size,start)
%% 绘制一个立方体
%   center  中心
%   theta   转角
%   color   颜色
%   size    尺寸
%   start   起始点
%   调用实例：
%   boxplot3([0 0 0],[0 0 0], 'y',[1 1 1],[0 0 0])
    global params;
    theta = rotation(rotate);
    x=[0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0] * size(1) + start(1);
    y=[0 0 1 0 0 0;0 1 1 1 0 0;0 1 1 1 1 1;0 0 1 0 1 1] * size(2) + start(2);
    z=[0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1] * size(3) + start(3);
    for i = 1:24
        temp = theta * [x(i),y(i),z(i)]';
        x(i) = temp(1) + center(1);
        y(i) = temp(2) + center(2);
        z(i) = temp(3) + center(3);
    end
    figure(1);
    for i = 1:6
        
        fill3(x(:,i),y(:,i),z(:,i), color)
        xlim([-params.range,params.range]);
        ylim([-params.range,params.range]);
        zlim([0,2 * params.range]);
        grid on;        
        hold on;
    end
    grid on;
    flag = 1;
end
