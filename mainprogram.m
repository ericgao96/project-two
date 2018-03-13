% This is the main program for the project.
% we will use functions defined before. Make sure all functions and scripts are in same directory.

clc;clear all;close all;
% read data into a cell called trainingset.traingset{i}stands for number(i-1)
load('mnist_all.mat');

% Select training digit
digit=input('Enter the digit you want to train: ');
% trainingdata is 784*X, each column is a training sample for digit i.
trainingdata=eval(sprintf('%s%d','train',digit))'; 
trainingdata=trainingdata./256;

% set up training parameters
numhidLayers=input('Enter the number of hidden layers: ');
numNeurons=input('Enter the number of neurons per hidden layer: ');
yita=input('Enther the training rate coefficient: ');
itr=input('Enter the times of training (there exists a max): ');

% initialize weight matrix
weights=prob_5_initialize(numhidLayers,numNeurons);

% intialize target matrix
target=zeros(10,10);
for i=1:10
    target(i,i)=1;
end
[m,n]=size(trainingdata);

% training using the 'digit'
if itr<n
    n=itr;
end
for i=1:n
   [output,outputs]=prob_4_network(numNeurons,numhidLayers,trainingdata(:,i),weights);
   weights=prob_6_training(yita,outputs,output,target(:,1),weights,numhidLayers,numNeurons,trainingdata(:,i));
end
