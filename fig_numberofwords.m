close all;clear;clc;
queries = 1:25;
chatGPT = [282, 309, 322, 361, 356, 343, 333, 321, 341, 378, 357, 350, 397, 360, 376, 365, 344, 424, 371, 389, 373, 416, 390, 366, 376];
gemini = [300, 280, 280, 301, 320, 250, 230, 250, 260, 260, 240, 280, 300, 260, 300, 240, 270, 280, 300, 290, 300, 300, 300, 250, 200];
figure;
plot(queries, chatGPT, '-o', 'MarkerEdgeColor', 'red',...
    'MarkerFaceColor', 'red', 'MarkerSize', 8, 'Color', 'red');
hold on;
plot(queries, gemini, '-s', 'MarkerEdgeColor', 'blue',...
    'MarkerFaceColor', 'blue', 'MarkerSize', 8, 'Color', 'blue');
xlabel('Queries', 'FontSize', 12);
ylabel('Response Time (milliseconds)', 'FontSize', 12);
title('Response Time for ChatGPT vs Gemini', 'FontSize', 14);
legend({'ChatGPT', 'Gemini'}, 'FontSize', 10, 'Location', 'northwest');
hold off;
