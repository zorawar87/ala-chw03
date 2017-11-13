%% Import Data

Data = importdata('GlobalTemps.txt');
x = Data(:,1);  % x data is the year
y = Data(:,2);  % y data is the global temperature anomaly

%% Plot Data Points

% Open a figure and plot the data
figure; hold on;
plot(x,y,'ko-','LineWidth',1,'MarkerSize',5);
hold off;
box on;             % Makes a nice box around the plot
xlim([1940 2017]);  % Sets the limits of the box in the x direction
ylim([-0.2 1]);     % Sets the limits of the box in the y direction
xlabel('Year','FontSize',16,'FontName','Helvetica'); % x label
ylabel('Global Temperature Anomaly (Celsius)','FontSize',16,'FontName','Helvetica'); % y label
set(gca,'FontSize',16,'FontName','Helvetica'); % Sets the Font size and type
set(gca,'XTick',[1940 1950 1960 1970 1980 1990 2000 2010]); % Define the ticks on the x axis
set(gca,'YTick',[-0.2 0 0.2 0.4 0.6 0.8 1]); % Define the ticks on the y axis