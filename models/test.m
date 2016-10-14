world = vrworld('copter.wrl');
open(world);
fig = view(world, '-internal');
vrdrawnow;
get(world)
nodes(world)
copter = vrnode(world,'B1');
fields(copter)% Simulation times, in seconds.
start_time = 0;
end_time = 10;
dt = 0.005;
times = start_time:dt:end_time;
plot_data = [];

% Number of points in the simulation.
N = numel(times);

%Initial simulation state.
x = [0; 0; 5];
xdot = zeros(3, 1);
theta = zeros(3, 1);

% Simulate some disturbance in the angular velocity
% The magnitude of the deviation is in radians / second.
deviation = 100;
thetadot = deg2rad(2 * deviation * rand(3, 1) - deviation);
thetadot = zeros(3,1);

%Physical constant
m = 1;
g = 9.8;
k = 1;
kd = 0.1;
I = 1;
L = 1;
b = 1;

%Step through the simulation, updating the state.
for t = times
    
    
    omega = thetadot2omega(thetadot, theta);
    i = rotor_input(t, omega, x, xdot, theta, thetadot);
    a = acceleration(i, theta, xdot, m, g, k, kd);
    omegadot = angular_acceleration(i, omega, I, L, b, k);
    
    omega = omega + dt * omegadot;
    thetadot = omega2thetadot(omega, theta);
    theta = theta + dt * thetadot;
    xdot = xdot + dt * a;
    x = x + dt * xdot;
    if x(3) <= 0
        %break
    end
    copter.translation = x';
    vr_rotation = theta2rotation(theta);
    copter.rotation = vr_rotation;
    
    pause(0.05)
 
end
clear all;
