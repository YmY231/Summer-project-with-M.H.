syms x y n theta delta m k a b c d e h

% alpha=.1;
% gamma=0.327;
% %delta=h*d/(b*e);
% theta=alpha*gamma;
% epsilon=alpha*gamma-.03;
% delta=.2;

ode = [x*(n*x/(theta+x)-delta-x/k)-((m*x*y)/(a*x+b*y+c)),(e*m*x*y)/(a*x+b*y+c)-d*y-h*(y)^2];
Lf = 1/2*(e*x+y)^2;
DLf = latex(expand(diff(Lf,x)*ode(1) + diff(Lf,y)*ode(2)))
