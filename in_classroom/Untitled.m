
%%
% bar([1 10 7 8 2 2 9 3 6])
% fig = gcf;
% fig.InvertHardcopy = 'off';
% saveas(gcf,'GrayBackground.png')
%%
%figure('Color',[0.8 0.8 0.8]); set(gca, 'color', [1 1 0])



bar([1 10 7 8 2 2 9 3 6])
fig = gcf;
fig.Color = 'yellow';
fig.InvertHardcopy = 'off';
saveas(gcf,'YellowBackground.png')