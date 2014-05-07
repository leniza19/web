function [out1]=ode_perox(x,t)
global k;
global model;
global catal;

        
		xdot = zeros(4,1);    

        w1 = k(1)*x(1)-k(3)*x(2);
        w2 = k(2)*x(2);
        xdot(1)= -w1;
        xdot(2)= w1-w2;
        xdot(3)= w2;
        xdot(4)= 0.5*w2;
out1=xdot;
endfunction