%Ejercicio 1 parcial 1
clf; clc;

Ts = 0.01; t = -4:Ts:10;

y1 = -2*ustep(t,1); 
y2 = ramp(t,2,1); 
y3 = -ramp(t,2,-1); 
y4 = ustep(t,-2); 
y5 = -ramp(t,1,-2);
y6 = ramp(t,1,-4); 
y7 = -ramp(t,1,-5);
y8 = ramp(t,1,-7);
y9 = ustep(t,-7); 

y=y1+y2+y3+y4+y5+y6+y7+y8+y9; %Suma de todas las señales

plot(t,y); axis([-4 10 -4 5]); 
grid on; a=12;                                                                       
title('$Ejercicio 1$','interpreter','latex','FontSize',a)
xlabel('$t$','interpreter','latex','FontSize',a)
ylabel('$y(t)$','interpreter','latex','FontSize',a)

function y = ustep(t,ad)   % Generacion del escalon unitario
                           % t: tiempo
                           % ad : retardo (negativo), avance (positivo)                 
N= length(t);
y = zeros(1,N);
    for i = 1:N
        if t(i)>= -ad
            y(i) = 1;
        end
    end
end

function y = ramp(t,m,ad) % generacion de la señal rampa   
                          % t: tiempo evaluado
                          % m: pendiente de la rampa
                          % ad : retardo (negativo), avance (positivo)
N= length(t);
y = zeros(1,N);
    for i = 1:N
        if t(i)>= -ad
            y(i) =m* (t(i)+ad);
        end
    end
end