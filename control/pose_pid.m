function correction = pose_pid(theta_desired, theta_curr, theta_last)
    correction = zeros(1,4);
	persistent in;
    global params;
    theta_desired = params.theta_desired;
	if isempty(in)
		in = 0;
    end
    dt = params.dt;
	in = in + (theta_desired - theta_curr);
	Kp = params.Kp_pose;	
	Kd = params.Kd_pose;
	Ki = params.Ki_pose;
    error = theta_desired - theta_curr;
    d_theta = theta_curr - theta_last;
	correction(1) = (error(1) * Kp - d_theta(1) / dt * Kd + Ki * in(1)) ; 
    correction(3) = -correction(1);
    correction(2) = (error(2) * Kp - d_theta(2) / dt * Kd + Ki * in(2)) ;
    correction(4) = -correction(2);
    
    yaw_val = (error(3) * Kp - d_theta(3) * dt * Kd + Ki * in(3)) ;
    correction(1) = correction(1) + yaw_val;
    correction(3) = correction(3) + yaw_val;
    correction(2) = correction(2) - yaw_val;
    correction(4) = correction(4) - yaw_val;
    
end