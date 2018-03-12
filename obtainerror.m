function err=obtainerror(weight, numhidLayers)
targets=zeros(10,10);
for i=1:10
    targets(i,i)=1;
end
load('mnist_all.mat');
for i=1:10                              % loop over train0 to train9
    name=sprintf('%s%d','train',i-1);
    T(i,:)=mean(eval(name));        % T refers to the training matrix. Each row of it is a training set.
    err1{i}=errorr(T(i,:),numhidLayers,weight,targets(:,i));
end
for i=1:10                              % loop over train0 to train9
    name=sprintf('%s%d','test',i-1);
    TT(i,:)=mean(eval(name)); % T refers to the training matrix. Each row of it is a training set.
    err2{i}=errorr(TT(i,:),numhidLayers,weight,targets(:,i));
    err{i}=err1{i}-err2{i};
end


function err=errorr(setinput,numhidLayers,weight,target)
out=[];
out=weight{1}'*setinput';
for i=2:numhidLayers+1
    out=double(weight{i})'*double(out);
end
out=weight{numhidLayers+1}'*out;
err=target-out;
return
