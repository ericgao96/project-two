function neuron=prob_3(input, weight)
NET=input*weight';
neuron=1/(1+exp(-NET));
end