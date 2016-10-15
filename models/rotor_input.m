function out = rotor_input(t, x, xdot, theta, thetadot, x_last)
%UNTITLED12 此处显示有关此函数的摘要
%   此处显示详细说明
    persistent i;
    lift = h_pid(2, x(3), x_last(3), 0.05);
    i = [lift lift lift lift];
    x
    x_last
    xdot
    theta
    
    
 

    out = i;

end

