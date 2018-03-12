prob_2;
weights=prob_5(3,10);
[output,outputs]=prob_4(10,3,train0(1,:)',weights);

prob_6_training(0.05,outputs,output,[1;0;0;0;0;0;0;0;0;0],weights,3,10,trainingset{1});
prob_6_training(0.05,outputs,output,[0;1;0;0;0;0;0;0;0;0],weights,3,10,trainingset{2});
prob_6_training(0.05,outputs,output,[0;0;1;0;0;0;0;0;0;0],weights,3,10,trainingset{3});
prob_6_training(0.05,outputs,output,[0;0;0;1;0;0;0;0;0;0],weights,3,10,trainingset{4});
prob_6_training(0.05,outputs,output,[0;0;0;0;1;0;0;0;0;0],weights,3,10,trainingset{5});
prob_6_training(0.05,outputs,output,[0;0;0;0;0;1;0;0;0;0],weights,3,10,trainingset{6});
prob_6_training(0.05,outputs,output,[0;0;0;0;0;0;1;0;0;0],weights,3,10,trainingset{7});
prob_6_training(0.05,outputs,output,[0;0;0;0;0;0;0;1;0;0],weights,3,10,trainingset{8});
prob_6_training(0.05,outputs,output,[0;0;0;0;0;0;0;0;1;0],weights,3,10,trainingset{9});
prob_6_training(0.05,outputs,output,[0;0;0;0;0;0;0;0;0;1],weights,3,10,trainingset{10})
