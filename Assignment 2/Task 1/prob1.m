TrainFileName = 'train.csv';
TrainData = csvread(TrainFileName,1,0);
x = TrainData(:,1);
y = TrainData(:,2);
plotSize = TrainData(:,5);
plotColor = TrainData(:,7);
figure
plot = scatter(x,y,plotSize.*0.03,plotColor,'filled');
plotc = colorbar;
colormap('jet');
plotc.Label.String = 'Mean Household Value';
xlabel('longitude');
ylabel('latitude');
