addpath('../control')
addpath('..')
addpath('../plotting')
global params;
params.Kp_h = 10;
params.Kd_h = 5000;
params.Ki_h = 5;
g = 9.8;
m = 1;
R = 0.1;
x = 0;
y = 0;
v_y = 0;
a_y = 0;
h_desired = 2;
lift = 0;
dt = 0.02;
y_last = 0;
lift = 0;
t = 0:dt:20;
y_a = zeros(size(t,2));
tic
for i = 1 : size(t,2)
	lift = h_pid(h_desired, y, y_last, dt);
	y_last = y;
	y = y + v_y * dt + (lift - m * g) / m * dt / 2 * dt;
	v_y = v_y + (lift - m * g) / m * dt; 	
	if(y <= 0)
		y = 0;
		v_y = 0;
	end
	y_a(i) = y;
	plot_circle(0.1,x,y); 
	pause(0.02)
end
toc
figure;
plot(t, y_a)
