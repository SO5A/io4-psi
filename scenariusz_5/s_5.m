close all; clear all; clc;
 
WE = iris_dataset;
size(WE);
plot(WE(1,:),WE(2,:),'b.',WE(3,:),WE(4,:),'g.');
 grid on;
dimensions   = [10 10];
coverSteps   = 1000;
initNeighbor = 300;
topologyFcn  = 'hextop';
distanceFcn  = 'dist';
 
%  SOM:
net = selforgmap(dimensions,coverSteps,initNeighbor,topologyFcn,distanceFcn);
 
 
% Trenowanie 
net = train(net,WE);
y = net(WE);
 
grid on
