function w=prob_6(y,outputs, output,target,weights2)
%Adjusting the weights of the output layer. 
%y is yita(training rate, 0.01~0.1)
%outputs is input layer and hidden layer outputs.
%output is output layer.
%target is the target values. Ex.Digit 1 = (0 1 0 0 0 0 0 0 0 0)
%weights weight coefficient matrix of hidden layers.
%weights is weight coefficeint matrix between last hidden layer and output
%layer.
[n,m]=size(outputs);

for q=1:10
    error=abs(target(q)-output(q));
    delta=output(q)*(1-output(q))*error;
    for p=1:n
        weights2(p,q)=weights2(p,q)+y*delta*outputs(p,end);
    end
end
w=weights2;
end