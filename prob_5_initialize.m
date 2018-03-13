function weights=prob_5_initialize(numhidLayers,numNeurons)
% 784 is dimension of input layers, 10 is dimension of output layers,which
% are fixed. 
% numNuerons can be arbitrary constant.
% weights is a cell consists of L+1 weight matrix.1 of them is 784*numNeurons;L of them is numNeurons*numNeurons;1
% of them is numNeurons*10;
weights={rand(784,numNeurons)};
for i=2:numhidLayers
    weights{i}=rand(numNeurons,numNeurons)/1000;
end
weights{numhidLayers+1}=rand(numNeurons,10)/1000; 

end
