function OUT = prob_4(numHidLayers,input, weights) 
%input is a vector, whose dimension is decided by number of pixels the
%graph contains
%weights is a n by n matrix, n is the dimension of input

n=length(input);
outputs = ones(n,numHidLayers+2);
neuron=ones(n,1);
outputs(:,1)=input;
for j = 2:(numHidLayers+2)
    for i = 1:n
        net = weights(:,i)'*outputs(:,j-1);
        neuron(i)=1/(1+exp(-net));
        outputs(i,j) = 1/(1+exp(-net));
    end
end
OUT=outputs(:,end);
