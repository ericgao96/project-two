function [output,outputs] = prob_4_network(numNeurons,numhidLayers,input, weights)
%input is a vector, whose dimension is decided by number of pixels the
%graph contains. In this project, it is an 784*1 column vector.
%weights is a cell. The first element is weight matrix between input layers
%and the first hidden layer.(dim:784 * numNeurons) The 2nd  through the(numhidLayers)th elements
%are weight matrix between hidden layers(dim:numNeurons * numNeurons). The (numhidLayers+1) element is
%the weight matrix between the last hidden layer and output layer.(dim:numNeurons * 10).
%numNeurons is the number of neurons in one hidden layer.

outputs = ones(numNeurons,numhidLayers);
output=ones(10,1);

j=1;
net=double(weights{1}')*double(input);                        % We get the net for the first hidden layer
outputs(:,j)=1./(1+exp(-net));                   % We get the neurons for the first hidden layer

for j = 2:numhidLayers
    net=ones(numNeurons,1);
    net=double((weights{j})')*double(outputs(:,j-1));
    outputs(:,j)=1./(1+exp(-net)); 
end

j=numhidLayers+1;
net=ones(10,1);
net=double((weights{j})')*double(outputs(:,j-1));
output=1./(1+exp(-net));

