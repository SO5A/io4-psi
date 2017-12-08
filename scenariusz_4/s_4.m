close all; clear all; clc;
PR=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;];
%wejscia do sieci i min/max wartosci wejsc
S=20; %ilosc neuronow na wyjsciu
net = newff(PR,S,{'tansig'},'trainlm','learnh');

%Wczytywanie danych z pliku
filename = 'alfabet.txt';
delimiterIn = ' ';
WE = importdata(filename,delimiterIn);

WY=eye(20);
%parametry treningu
lp.dr = 0.5; %wsp zap
lp.lr = 0.05; %wsp ucz
dw=learnh([0],WE,[0],[0],WY,[0],[0],[0],[0],[0],lp,[0]);
net.trainParam.epochs = 1000; %ilosc epok
net.trainParam.goal = 0.001; %cel wydajnosciowy
net.trainParam.lr=0.5; % wskaznik uczenia
net=train(net, WE, dw);

%litery do testu:
i=5;
test=WE(:,i);
efekt1=sim(net, test);%symulacja
efekt=dw;
disp('Hebb:')
disp('A='),disp(sum(efekt(1,':')));
disp('B='),disp(sum(efekt(2,':')));
disp('C='),disp(sum(efekt(3,':')));
disp('D='),disp(sum(efekt(4,':')));
disp('E='),disp(sum(efekt(5,':')));
disp('F='),disp(sum(efekt(6,':')));
disp('G='),disp(sum(efekt(7,':')));
disp('H='),disp(sum(efekt(8,':')));
disp('I='),disp(sum(efekt(9,':')));
disp('J='),disp(sum(efekt(10,':')));
disp('K='),disp(sum(efekt(11,':')));
disp('L='),disp(sum(efekt(12,':')));
disp('O='),disp(sum(efekt(13,':')));
disp('P='),disp(sum(efekt(14,':')));
disp('R='),disp(sum(efekt(15,':')));
disp('Q='),disp(sum(efekt(16,':')));
disp('S='),disp(sum(efekt(17,':')));
disp('T='),disp(sum(efekt(18,':')));
disp('Y='),disp(sum(efekt(19,':')));
disp('Z='),disp(sum(efekt(20,':')));
efekt=efekt1;
%wypisywanie wartosci dla poszczegolnych liter
disp('Wartosci wyjsciowe algorytmu dla wszystkich liter:')
disp('A='),disp(efekt(1));
disp('B='),disp(efekt(2));
disp('C='),disp(efekt(3));
disp('D='),disp(efekt(4));
disp('E='),disp(efekt(5));
disp('F='),disp(efekt(6));
disp('G='),disp(efekt(7));
disp('H='),disp(efekt(8));
disp('I='),disp(efekt(9));
disp('J='),disp(efekt(10));
disp('K='),disp(efekt(11));
disp('L='),disp(efekt(12));
disp('O='),disp(efekt(13));
disp('P='),disp(efekt(14));
disp('R='),disp(efekt(15));
disp('Q='),disp(efekt(16));
disp('S='),disp(efekt(17));
disp('T='),disp(efekt(18));
disp('Y='),disp(efekt(19));
disp('Y='),disp(efekt(20));