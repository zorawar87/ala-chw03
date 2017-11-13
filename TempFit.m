format;
clc;
Data = importdata('GlobalTemps.txt');
x = Data(:,1);  % x data is the year
y = Data(:,2);  % y data is the global temperature anomaly

[C,R] = qr(Data,y);
k = solveU(R,C);

figure;
plot(x,y);