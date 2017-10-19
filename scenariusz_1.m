%% AND
close all; clear all; clc;
net=newp([0 1;-2 2], 1);
%tworzymy warstwê perceptronu z jednym elementem
%2-elem.( zakres [0 1] i [-2 2] i jednym neuronem
A=[0 0 1 1];
B=[1 0 1 0];
P=[A;B];
T=[0 0 1 0];
net =train(net,P,T);
Wyj=sim(net,P)

%% NAND
close all; clear all; clc;
net=newp([0 1;-2 2], 1);
A=[0 0 1 1];
B=[1 0 1 0];
P=[A;B];
T=[1 1 0 1];
net =train(net,P,T);
Wyj=sim(net,P)
%% OR
close all; clear all; clc;
net=newp([0 1;-2 2], 1);
A=[0 0 1 1];
B=[1 0 1 0];
P=[A;B];
T=[1 0 0 1];
net =train(net,P,T);
Wyj=sim(net,P)

%% NOR
close all; clear all; clc;
net=newp([0 1;-2 2], 1);
A=[0 0 1 1];
B=[1 0 1 0];
P=[A;B];
T=[0 1 0 0];
%%  Wagi 
net =train(net,P,T);
Wyj=sim(net,P)
net=newp([0 1;-2 2], 1);
A=[0 0 1 1];
B=[1 0 1 0];
P=[A;B];
T=[0 0 1 0];
net.IW{1}=[8 8];%ustawianie wag
net.b{1}=[5]
net =train(net,P,T);
Wyj=sim(net,P)