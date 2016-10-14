function [retval] = plot_circle(R, x, y)
 hold off;
 alpha=0:pi/20:2*pi;    
 x = x + R*cos(alpha); 
 y = y + R*sin(alpha); 
 fill(x,y,'r');       
 axis([-20*R 20*R -R 40*R]);
end
