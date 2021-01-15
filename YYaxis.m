%% ªÊ÷∆À´y÷·Õº

%  ˝æ›∂¡»°
Info = "xxx";
figure();
data = readtable(Info+"_data.csv");
rows = find(data.Condition==1);

x = data.x(rows);
y1 = data.y1(rows);

% ◊Ûy÷·ªÊ÷∆
yyaxis left
scatter(x(1:5), y1(1:5), 66, 'MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',[0 .5 .5], 'LineWidth', 1.5);
hold on;
scatter(x(6:8), y1(6:8), 66, 'MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',[.9 .5 0], 'LineWidth', 1.5);
hold on;

plot(0.5:0.5:5.5, 0.5:0.5:5.5, '--k', 'LineWidth', 1.5);
hold on;
ylabel("Y1");
xlabel("X1");

errors = data.error(rows);
y2 = abs(errors) ./ data.x(rows);
% ”“y÷·ªÊ÷∆
yyaxis right
ylabel("Percentile");
ylim([0, 1]);
b = bar(x, y2, 'FaceColor',[0 .5 .5],'LineWidth',1.5);
b.FaceColor = 'flat';
b.CData([4; 6; 8],:) = repmat([.9 .5 0], 3, 1);
hold on;

legend("1", "2", "x=y", "3", "4", 'Location', 'northwest');
title(Info);
box off;