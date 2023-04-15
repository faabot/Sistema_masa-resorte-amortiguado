clc
clear

%Datos%
kr = 20000;         %Constante del Resorte%
da = 2000;          %Constante de amortiguamiento%
m = 5000;           %Masa de los cuerpos%
f_0 = 0.5;          %Constante f_0 para fuerzas moduladas%

%Fuerzas de cada caso%
f1 = 5000;          %Fuerza de equilibrio en el punto 1%
f2 = 6000;          %Fuerza de equilibrio en el punto 2%
f3 = 4000;          %Fuerza de equilibrio en el punto 3%

%Pendiente%
p = (f2-f3)/10;

%señal seno:
t = 0:0.01:60; % Vector de tiempo
y = zeros(size(t)); % Inicializar la señal en 0
y(t>=5) = sin(2*pi*0.5*(t(t>=5)-5)); % Agregar una señal senoidal a partir de t=5
%plot(t, y); % Gráfica de la señal
ST=([t',y']);

%Constantes auxiliares%
c1 = f2-f1; 
c2 = (2*pi*f_0)/(c1);
 