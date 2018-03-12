function W=prob_6_training(y,outputs, output,target,weights,numhidLayers,numNeurons,input)
%Adjusting the weights of the output layer. 
%y is yita(training rate, 0.01~0.1)
%outputs is input layer and hidden layer outputs.
%output is output layer.
%target is the target values. Ex.Digit 1 = (0 1 0 0 0 0 0 0 0 0)
%weights weight coefficient matrix of hidden layers.
%weights is weight coefficeint matrix between last hidden layer and output
%layer.

input=input(:);
error=abs(output-target);
%target and output are column vectors
delta={ones(numNeurons,numhidLayers),[]};  %we only need delta for hidlayers and outputlayers
delta{2}=output.*(1-output).*error;
weights{numhidLayers+1}=weights{numhidLayers+1}+y*outputs(numhidLayers)*delta{2}';

for j=numhidLayers:-1:2
    if j==numhidLayers
        delta{1}(:,j)=outputs(:,j).*(1-outputs(:,j)).*(weights{1+j}*delta{2});
    else
        delta{1}(:,j)=outputs(:,j).*(1-outputs(:,j)).*(weights{1+j}*delta{1}(:,j+1));
    end
    weights{j}=weights{j}+y*delta{1}(:,j)*outputs(:,j-1)';
end
j=1;
delta{1}(:,j)=outputs(:,j).*(1-outputs(:,j)).*(weights{1+j}*delta{1}(:,j+1));
weights{j}=weights{j}+y*input*delta{1}(:,j)'; 
W=weights;
    
