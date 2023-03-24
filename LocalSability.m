

syms u v epsilon alpha gamma delta  

% Parameter values
alpha=.1;
gamma=0.327;
%delta=h*d/(b*e);
theta=alpha*gamma;
epsilon=alpha*gamma-.03;
delta=.2;

% Equlibrium points

% S=vpasolve([u-(epsilon*u*v)/(alpha*u+v)-(u)^2== 0, -gamma*v+(epsilon*u*v)/(alpha*u+v)-delta*(v)^2==0], [u,v]);
% 
% u1=double(S.u1)
% u2=double(S.u2)
% u3=double(S.u3)
% v1=double(S.v1)
% v2=double(S.v2)
% v3=double(S.v3)

%Local Stability analysis

J=jacobian([u-(epsilon*u*v)/(alpha*u+v)-(u)^2,-gamma*v+(epsilon*u*v)/(alpha*u+v)-delta*(v)^2],[u,v])


J1=subs(J, {sym('u'), sym('v')}, {1, 1})
EigenvaleofJ1=double(eig(J1))

J2=subs(J, {sym('u'), sym('v')}, {0.669, 0.1417})
EigenvaleofJ2=double(eig(J2))
