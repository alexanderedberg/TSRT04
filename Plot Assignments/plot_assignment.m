%Alexander Edberg (aleed476)

%1
clear
close all

load datatraffic.mat

%2
plot(years,traffic)

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Exabyte (10^{18} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


%3
bar(years,traffic)

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
bar(years,traffic,'stacked')

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Exabyte (10^{18} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')


%5
clf % clear figure to start plotting without subplot
traffic_avg_per = traffic/(8*10^9); %divide by 8billion to get the traffic for average person
traffic_avg_per = traffic_avg_per*10^9; %Go from exabyte (10^18 byte) to gigabyte (10^9 byte)

plot(years,traffic_avg_per)

title('Monthly amounts of data traffic each year')
xlabel('Year')
ylabel('Gigabyte (10^{9} bytes)')
legend('Mobile Data (2G/3G/4G)', 'Mobile Data (5G)', 'Fixed Wireless Access (3G/4G/5G)', 'Location', 'northwest')




