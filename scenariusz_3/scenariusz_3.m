close all; clear all; clc;

PR=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;   
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;];
%wejscia do sieci i min/max wartosci wejsc
S=20; %ilosc wyjsc z sieci

net = newff(PR,S,{'tansig'},'traingda'); 

%Wczytywanie danych z pliku
filename = 'alfabet.txt';
delimiterIn = ' ';
WE = importdata(filename,delimiterIn);

WY=eye(20);

%parametry treningu
net.trainParam.epochs = 10000; %max ilosc epok
net.trainParam.lr = 0.00001; %wspolczynnik uczenia

net = train(net, WE, WY);%uczenie

for i=1:20
    test=WE(:,i);
    efekt=sim(net, test);%testowanie sieci
    %wypisywanie jaka to litera
    max=1;
    for j=1:20
        if (efekt(max)<efekt(j))
            max=j;
        end;
    end;
    switch max
        case 1
            disp('A')
        case 2
            disp('B')
        case 3
            disp('C')
        case 4
            disp('D')
        case 5
            disp('E')
        case 6
            disp('F')
        case 7
            disp('G')
        case 8
            disp('H')
        case 9
            disp('I')
        case 10
            disp('J')
        case 11
            disp('K')
        case 12
            disp('L')
        case 13
            disp('O')
        case 14
            disp('P')
        case 15
            disp('R')
        case 16
            disp('Q')
        case 17
            disp('S')
        case 18
            disp('T')
        case 19
            disp('Y')
        case 20
            disp('Z')
        otherwise
            disp('Blad!!!')
    end
    disp(efekt(max))
end