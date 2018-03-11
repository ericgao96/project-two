function neuron=prob_3_neuron(connection, weight)         % connection and weight are both n by 1 column vector
  NET=dot(connection,weight);                          % NET = sum of all pairs of (Oi,Wi)
  neuron=1/(1+exp(-NET));
end
