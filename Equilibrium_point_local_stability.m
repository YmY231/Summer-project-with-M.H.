syms x y n theta delta m k a b c d e h

% alpha=.1;
% gamma=0.327;
% %delta=h*d/(b*e);
% theta=alpha*gamma;
% epsilon=alpha*gamma-.03;
% delta=.2;

ode = [x*(n*x/(theta+x)-delta-x/k)-((m*x*y)/(a*x+b*y+c)),(e*m*x*y)/(a*x+b*y+c)-d*y-h*(y)^2];
% Equilibrium points
[X Y]=solve(ode);
fx = x*(a*x+c)*(n*x/(theta+x)-delta-x/k)/(m*x-b*x*(n*x/(theta+x)-delta-x/k));
poly = subs(ode(2),y,fx)
% poly = collect(poly)
latex(poly)

% Local stability analysis
J = jacobian(ode,[x y]);
Jlatex = latex(J);

% Jacobian at point E0
J0=subs(J, {sym('x'), sym('y')}, {X(1), Y(1)})
j0=latex(J0);
EigenvaleofJ0=latex(eig(J0))

% Jacobian at point E1
J1=subs(J, {sym('x'), sym('y')}, {X(2), Y(2)})
j1=latex(J1)
EigenvaleofJ1=latex(eig(J1))

% Jacobian at point E2
J2=subs(J, {sym('x'), sym('y')}, {X(3), Y(3)})
j2=latex(J2)
EigenvaleofJ2=latex(eig(J2))

% Jacobian at point E3
J3=subs(J, {sym('x'), sym('y')}, {X(4), Y(4)})
j3=latex(J3)
EigenvaleofJ3=latex(eig(J3))

% Jacobian at point E4
J4=subs(J, {sym('x'), sym('y')}, {X(5), Y(5)})
EigenvaleofJ4=eig(J4)

% Jacobian at point E5
J5=subs(J, {sym('x'), sym('y')}, {X(6), Y(6)})
EigenvaleofJ5=eig(J5)

% Jacobian at point E6
J6=subs(J, {sym('x'), sym('y')}, {X(7), Y(7)})
EigenvaleofJ6=eig(J6)

% Jacobian at point E7
J7=subs(J, {sym('x'), sym('y')}, {X(8), Y(8)})
EigenvaleofJ7=eig(J7)

% Jacobian at point E8
J8=subs(J, {sym('x'), sym('y')}, {X(9), Y(9)})
EigenvaleofJ8=eig(J8)