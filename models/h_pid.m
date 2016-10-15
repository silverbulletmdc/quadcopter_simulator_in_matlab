function lift = h_pid(h_desired, h_curr, h_last, dt)
	persistent in;
	if isempty(in)
		in = 0;
	end
	in = in + (h_desired - h_curr) * dt;
	Kp = 2;	
	Kd = 1000;
	Ki = 5;
	lift = ((h_desired - h_curr) * Kp - (h_curr - h_last) * dt * Kd + Ki * in) ; 

    %+ m * g * (1 - 0.5 * rand(1)) + 
end
