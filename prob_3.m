function neuron=prob_3(connection, weight)         % connection and weight are both n-vector
  NET=connection*weight';                          % NET = sum of all pairs of (Oi,Wi)
  neuron=1/(1+exp(-NET));
end
