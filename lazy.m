function zdot=lazy(t,z);
global epsilon alpha gamma delta
zdot= [z(1)-(epsilon*z(1)*z(2))/(alpha*z(1)+z(2))-(z(1))^2;-gamma*z(2)+(epsilon*z(1)*z(2))/(alpha*z(1)+z(2))-delta*(z(2))^2];

% denote nx/(theta+x)-delta be del, a constant
% x = del*k*u ; y = del*m*k*v
% let del be approximately r = .806
% epsilon = del^2*mk/b 
% alpha = a/bm = 15/(16*19) = 0.04934
% gamma = d/del = 0.3/0.806 = 0.37221
% delta = ehk = 0.333*0.01*300 = 0.999
