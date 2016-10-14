function a = acceleration(inputs, angles, xdot, m, g, k, kd)
    gravity = [0; 0; -g];
    R = rotation(angles);
    T = R * thrust(inputs, k);
    Fd = -kd * xdot;
    a = gravity + 1 / m * T + Fd;
end
