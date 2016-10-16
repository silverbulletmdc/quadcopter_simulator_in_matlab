global params;
%% 仿真控制参数
params.using_vr = true;     %使用vrml模式显示
params.range = 5;           %视口大小
params.simu_time = 1000;     %仿真时间。由于电脑算力问题，实际运行时间会比仿真时间长。
params.dt = 0.05;           %仿真步长
params.motion_noise = 0.1;    %执行误差，误差服从[0, motion_noise^2]的高斯分布。

%% 目标位置
params.h = 2;
params.theta_desired = [0 0 0]'

%% PID参数

%高度PID参数
params.Kp_h = 2;
params.Kd_h = 5;
params.Ki_h = 0.025;

%姿态PID参数
params.Kp_pose = 2;	
params.Kd_pose = 2;
params.Ki_pose = 0;

%% 