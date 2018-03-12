% This is the main program for the project.
% we will use functions defined before. Make sure all functions and scripts are in same directory.

clc;clear all;close all;
% read data into a cell called trainingset.traingset{i}stands for number(i-1)
prob_2;

% set up training parameters
numhidLayers=input('Enter the number of hidden layers: ');
numNeurons=input('Enter the number of neurons per hidden layer: ');
yita=0.05;
% initialize weight matrix
weights=prob_5_initialize(numhidLayers,numNeurons);
% intialize target matrix
target=zeros(10,10);
for i=1:10
    target(i,i)=1;
end

% first training using digit '0'
[output,outputs]=prob_4_network(numNeurons,numhidLayers,trainingset{1}(:),weights);
weights=prob_6_training(yita,outputs,output,target(1,:)',weights,numhidLayers,numNeurons,trainingset{1});
% continue training using digit '1'-'9' if necessary
for i=2:10
    [output,outputs]=prob_4_network(numNeurons,numhidLayers,trainingset{i}(:),weights);
    weights=prob_6_training(yita,outputs,output,target(i,:)',weights,numhidLayers,numNeurons,trainingset{i});
end
