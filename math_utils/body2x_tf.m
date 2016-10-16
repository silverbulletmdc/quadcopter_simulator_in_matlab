function out = body2x_tf(x)
%UNTITLED13 此处显示有关此函数的摘要
%   此处显示详细说明
    out = [cosd(45), -sind(45), 0;
            sind(45), cosd(45), 0;
            0   ,   0,  1] * x;

end
