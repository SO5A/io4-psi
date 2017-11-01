close all; clear all; clc;
 
PR=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;  0 1;];
S=1;  
%net = newlin(PR,S); %metoda 1
net = newff(PR,S,{'tansig' 'purelin'}); %metoda 2
 
%Wczytywanie danych z pliku
filename = 'alfabet.txt';
delimiterIn = ' ';
WE = importdata(filename,delimiterIn);
   
WY=[1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0]; 
  
net.trainParam.epochs = 10000000; 
net.trainParam.goal = 0.0001; 
net.trainParam.lr = 0.1; 
 
net = train(net, WE, WY);

 for i=1:20   
    %zmienna test jest wektorem przedstawiacym litere:
    %A a B b C c D d E e F f G g H h I i J j
    test=WE(:,i);
    efekt=sim(net, test);%testowanie sieci
        if round(efekt) == 1    
            disp('Duza litera');
        else
             disp('Mala litera');
        end
 end

