function weights=prob_5_initialize(numhidLayers,numNeurons)
%784 is dimension of input layers, 10 is dimension of output layers,which
%are fixed. 
%numNuerons can be arbitrary constant.
weights={rand(784,numNeurons)};
for i=2:numhidLayers
    weights{i}=rand(numNeurons,numNeurons)/1000;
end
weights{numhidLayers+1}=rand(numNeurons,10)/1000; 

end
