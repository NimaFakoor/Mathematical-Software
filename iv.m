s = [0.0006 0.003 0.005 0.002] 

x = zeros(length(s),100);
y = zeros(length(s),100);

for i = 1:length(s)
    subplot(2,2,i);
    x(i,:) = linspace(1-s(i),1+s(i));
    y(i,:) = (x(i,:)-1).^6;
    plot(x(i,:),y(i,:));
end