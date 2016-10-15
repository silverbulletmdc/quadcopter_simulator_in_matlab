function omega = thetadot2omega(thetadot, theta)
phi = theta(1);
psi = theta(3);
theta = theta(2);
omega = [1  0           -sin(theta);
         0  cos(phi)    cos(theta)*sin(phi);
         0  -sin(phi)   cos(theta)*cos(phi)] * thetadot; 
end