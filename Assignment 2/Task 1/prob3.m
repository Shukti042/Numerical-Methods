TrainFileName = 'test.csv';
TrainData = csvread(TrainFileName,1,0);
err=erro(TrainData(1,:));
i=2;
while(i<=200)
    err=err+erro(TrainData(i,:));
    i=i+1;
end
err=err/200;
err=sqrt(err);
fprintf('The Root mean squared error in test.csv is %f',err);