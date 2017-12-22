close all; clear all; clc;

%Wczytywanie danych z pliku
filename = 'alfabet.txt';
delimiterIn = ' ';
WE = importdata(filename,delimiterIn);

dimensions = [4 5];
coverSteps = 1000;
initNeighbor = 1;
topologyFcn = 'gridtop';
distanceFcn = 'dist';
% SOM
net = selforgmap(dimensions,coverSteps,initNeighbor,topologyFcn,distanceFcn);
% Trenowanie 
net = train(net,WE);
y = net(WE);
classes = vec2ind(y);