%Alexander Edberg (aleed476)

%1
clear
close all

load datatraffic.mat

%2
plot(years,traffic) %plot Y versus the corresponding values in X

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Exabyte (10^{18} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


%3
bar(years,traffic) %bar chart plot

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Exabyte (10^{18} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


%4
subplot(2,1,1); % (n,m,p), n=rows , m=columns, p =position for plot
bar(years,traffic)

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Exabyte (10^{18} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


subplot(2,1,2); % (n,m,p), n=rows , m=columns, p =position for plot
bar(years,traffic,'stacked') %stacked to get it stacked

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Exabyte (10^{18} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


%5
clf % clear figure to start plotting without subplot
traffic_avg_per = traffic/(8*10^9); %divide by 8billion to get the traffic for average person
traffic_avg_per = traffic_avg_per*10^9; %Go from exabyte (10^18 byte) to gigabyte (10^9 byte)

plot(years,traffic_avg_per)

title('Monthly amounts of data traffic each year for the average user')
xlabel('Year')
ylabel('Gigabyte (10^{9} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


%6-7

plot(years,sum(traffic_avg_per,2),'k-', years,traffic_avg_per(:,1),'b-.', years,traffic_avg_per(:,3), 'm:', years,traffic_avg_per(:,2),'r--')%,LineWidth=0.5)

title('Monthly amounts of data traffic each year for the average user')
xlabel('Year')
ylabel('Gigabyte (10^{9} bytes)')

legend('Total data traffic', 'Mobile Data (2G/3G/4G)', 'Fixed Wireless Access (3G/4G/5G)', 'Mobile Data (5G)', 'Location', 'northwest')

%8

saveas(gcf,'Data_traffic.fig')
saveas(gcf,'Data_traffic.jpg') %unsharp, bad for reports due to the unsharpness
saveas(gcf,'Data_traffic.png') %unsharp, bad for reports due to the unsharpness
saveas(gcf,'Data_traffic.pdf') %sharp, bad for reports the size of the "figure" is a whole a4 with a lot of blank space padding
saveas(gcf,'Data_traffic.eps', 'epsc') %added epsc flag here to get color, sharp and good for reports

%   Yes the resized changes carried over.

%9

%    Looks fine











