function lift = h_pid(h_desired, h_curr, h_last, theta)
	persistent in;
    global params;
    dt = params.dt;
	if isempty(in)
		in = 0;
	end
	in = in + (h_desired - h_curr);
	Kp = params.Kp_h;	
	Kd = params.Kd_h;
	Ki = params.Ki_h;
	lift = ((h_desired - h_curr) * Kp - (h_curr - h_last) / dt * Kd + Ki * in) / cos(theta(3)) ; 

    %+ m * g * (1 - 0.5 * rand(1)) + 
end
