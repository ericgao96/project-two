function neuron=prob_3(connection, weight)         % connection and weight are both n-vector
  NET=weight'*connection;                          % NET = sum of all pairs of (Oi,Wi)
  neuron=1/(1+exp(-NET));
end
