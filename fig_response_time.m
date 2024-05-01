close all;clear;clc;
%% -------------------------------------------------------------------- %%
queries = 1:30;
chatGPT = [3.21, 3.36, 3.05, 3.47, 2.9, 3.5, 2.8, 3.1, 3.1, 2.6, ...
                 2.9, 2.9, 3.4, 3.3, 3.3, 3, 4.4, 3.7, 3.5, 6.7, ...
                 2.1, 3.4, 3, 4.1, 4.6, 3.3, 3.76, 3.33, 6.4, 6];
gemini = [5.43, 4.44, 5.44, 14.81, 8.3, 12.21, 7.61, 8.65, 7.8, 6.8, ...
                6.71, 10.05, 10.5, 12.81, 11.36, 10.11, 12.42, 11.25, 10.38, 10.65, ...
                10.43, 7.05, 10.09, 10.75, 11, 15.92, 16.22, 16.24, 6.03, 15.86];
figure;
plot(queries, chatGPT, '-o', 'MarkerEdgeColor', 'red', 'MarkerFaceColor',...
    'red', 'MarkerSize', 10, 'Color', 'red');
hold on;
plot(queries, gemini, '-s', 'MarkerEdgeColor', 'blue', 'MarkerFaceColor',...
    'blue', 'MarkerSize', 10, 'Color', 'blue');
xlabel('Queries', 'FontSize', 15);
ylabel('Response time (seconds)', 'FontSize', 15);
legend({'ChatGPT', 'Gemini'}, 'FontSize', 15, 'Location', 'northwest');
hold off;
%% -------------------------------------------------------------------- %%
queries = 1:30;
chatGPT = [282, 309, 322, 361, 356, 343, 333, 321, 341, 378, 357, 350, 397,...
    360, 376, 365, 344, 424, 371, 389, 373, 416, 390, 366, 376, 332, 272, 344, 312, 295];
gemini = [300, 280, 280, 301, 320, 250, 230, 250, 260, 260, 240, 280, 300,...
    260, 300, 240, 270, 280, 300, 290, 300, 300, 300, 250, 200, 260, 280, 240, 300, 260];
figure;
plot(queries, chatGPT, '-o', 'MarkerEdgeColor', 'red',...
    'MarkerFaceColor', 'red', 'MarkerSize', 8, 'Color', 'red');
hold on;
plot(queries, gemini, '-s', 'MarkerEdgeColor', 'blue',...
    'MarkerFaceColor', 'blue', 'MarkerSize', 8, 'Color', 'blue');
xlabel('Queries', 'FontSize', 15);
ylabel('Number of words', 'FontSize', 15);
%title('Response Time for ChatGPT vs Gemini', 'FontSize', 14);
legend({'ChatGPT', 'Gemini'}, 'FontSize', 15, 'Location', 'northwest');
hold off;
