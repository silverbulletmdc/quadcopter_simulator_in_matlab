function out = rotor_input(x, xdot, theta, thetadot, x_last, theta_last)
%UNTITLED12 此处显示有关此函数的摘要
%   此处显示详细说明
    persistent i;
    global params;
    lift = h_pid(2, x(3), x_last(3), theta);
    pose_correction = pose_pid([0,0,0]', theta, theta_last) ;
    rand_error = [randn() randn() randn() randn()] * params.motion_noise;
    % 显示系统状态
    i = rand_error + lift + pose_correction
    x = x'
    theta = theta'
    
    
 

    out = i;

end

