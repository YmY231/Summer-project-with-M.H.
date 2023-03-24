function zdot=bazy(t,z);
global epsilon alpha gamma delta
zdot= [z(1)-(epsilon*z(1)*z(2))/(alpha*z(1)+z(2))-(z(1))^2;-gamma*z(2)+(epsilon*z(1)*z(2))/(alpha*z(1)+z(2))-delta*(z(2))^2];
