function OUT = prob_4(numHidLayers,input, weights,weights2)
%input is a vector, whose dimension is decided by number of pixels the
%graph contains
%weights is a n by n matrix for input layer & hidden layers, n is the dimension of input
%weights2 is a n by 10 matrix used between the last hidden layer and the
%output layer.

n=length(input);
outputs = ones(n,numHidLayers+1);
output=ones(10,1);
neuron=ones(n,1);
outputs(:,1)=input;
for j = 2:(numHidLayers+1)
    for i = 1:n
        net = weights(:,i)'*outputs(:,j-1);
        neuron(i)=1/(1+exp(-net));
        outputs(i,j) = neuron(i);
    end
end
temp=outputs(:,end);                     % temp records the neurons of the last hidden layer
for i = 1:10                             % compute the output layer using weights2
    net=weights2(:,i)'*temp;
    neuron(i)=1/(1+exp(-net));
    output(i) = neuron(i);
end
OUT=output;