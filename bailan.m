clear all
global epsilon alpha gamma delta

alpha=0.04934;
gamma=0.37221;
%delta=ehk;
theta=alpha*gamma;
epsilon=alpha*gamma-.03;
delta=.999;
%for epsilon=2:0.5:5

for ina=.5:0.1:1.5
    for inb=.5:.2:1
        
ts=[0 300];
z0=[ina inb];
[t, z] = ode45('lazy', ts , z0);  


%subplot(2,2,1)
plot(z(:,1),z(:,2)),grid; hold on
xlabel('Prey (u)'), ylabel('Predator (v)')
%plot(t,z(:,1),'*',t,z(:,2),'+');
%legend('prey','predator');
%xlabel('time'), ylabel('u ( * ), v ( + )')
%title('The global stability around E_1')
 z
 epsilon
 theta/epsilon
 theta
 
 %transcritical bifurcation at epsilon=alpha*gamma

%subplot(2,2,2)
%plot(z(:,1),z(:,2)),grid
%xlabel('prey'),ylabel('predator')
%title('Phase portrait')

%subplot(2,2,3)
%plot3(z(:,1),z(:,2),t),grid
%xlabel('prey'),ylabel('predator'), zlabel('time')
%title('3D view of phase portrait')

%subplot(2,2,4)
%semilogy(t,z), grid
%xlabel('time'),ylabel('species')
%title('Semilogarithmic plot')


    
    end
end



