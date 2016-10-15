function R = rotation(angles)
phi = angles(1);
psi = angles(3);
theta = angles(2);
    R = [
        cos(psi)*cos(phi)-cos(theta)*sin(phi)*sin(psi)    -cos(psi)*sin(phi)-cos(phi)*cos(theta)*sin(psi)  sin(theta)*sin(psi);
        cos(theta)*cos(psi)*sin(phi) + cos(phi)*sin(psi)    cos(phi)*cos(theta)*cos(psi)-sin(phi)*sin(psi)  -cos(psi)*sin(theta);
        sin(phi)*sin(theta)                                 cos(phi)*sin(theta)                             cos(theta)        
    ];
end