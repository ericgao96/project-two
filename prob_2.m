load('mnist_all.mat');                  % load the data

for i=1:10                              % loop over train0 to train9
    name=sprintf('%s%d','train',i-1);
    T(i,:)=mean(eval(name));            % T refers to the training matrix. Each row of it is a training set.
end

for i = 1:10                            % visualize these average digits using subplot.
    subplot(2,5,i);
    k = T(i,:);
    digit_image = reshape(k, 28, 28);
    trainingset{i}=digit_image;
    image(rot90(flipud(digit_image),-1));
    colormap(gray(256)), axis square tight off
end
