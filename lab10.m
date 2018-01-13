close all;
clc;
clear all;

temperatura = 820;
Q = 140000;
R = 8.3144;
temperatura_kelvin = temperatura + 273;
d0 = 0.000041;
D = d0*exp(-Q /(R * temperatura_kelvin))*1E10;
t = 1000;
x = 100;
dt = 0.01;
dx = 0.1;
Tabela = 1:x;
Tabela2 = 1:x;

Tabela(1) = 0.64;
Tabela(2) = 0.64;
Tabela(3) = 0.64;

for i = 4:x;
        Tabela(i) = 0.02;
        Tabela2(i) = 0.02;
end
Pomocnicza = 1-((2*D*(1/dt))/(1/dx)^2);
Pomocnicza2 = D*(1/dt)/((1/dx)^2);

predkosc = 3;
iteracje = temperatura / predkosc;
iteracje = 10*(temperatura / predkosc);

ksi = 6;
cGammaAlfa = -0.004425287356321839 * temperatura + 4.035862068965518;
for i = 1:iteracje;
    Tabela = Tabela2;

    if(Tabela(ksi) >= cGammaAlfa)
        ksi = ksi+1;
    end

    for j = 2:ksi;
        Tabela2(j) = Tabela(j) * Pomocnicza + (Tabela(j+1)+Tabela(j-1))* Pomocnicza2;
    end 
    Tabela2(1) = Tabela2(2);
    Tabela2(ksi) = Tabela2(ksi-1);

   if mod(i,100) == 0
        Tabela = Tabela./2;
    plot(Tabela)
    grid on;
    hold on;
    end
end
hold off;

disp(Tabela);