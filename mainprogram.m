% This is the main program for the project.
% we will use functions defined before. Make sure all functions and scripts are in same directory.

clc;clear all;close all;
% read data into a cell called trainingset.traingset{i}stands for number(i-1)
load('mnist_all.mat');
trainingdata=train0';

% set up training parameters
numhidLayers=input('Enter the number of hidden layers: ');
numNeurons=input('Enter the number of neurons per hidden layer: ');
yita=input('Enther the training rate coefficient: ');
% initialize weight matrix
weights=prob_5_initialize(numhidLayers,numNeurons);
% intialize target matrix
target=zeros(10,10);
for i=1:10
    target(i,i)=1;
end
[m,n]=size(trainingdata);
% first training using digit '0'

for i=1:n
        [output,outputs]=prob_4_network(numNeurons,numhidLayers,trainingdata(:,i),weights);
        weights=prob_6_training(yita,outputs,output,target(:,1),weights,numhidLayers,numNeurons,trainingdata(:,i));
end
