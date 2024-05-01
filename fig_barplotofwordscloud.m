close all;clear;clc;
words = {'LLPS', 'Phase separation', 'Cellular', 'Condensates',...
    'Proteins', 'Interactions', 'Dynamic', 'cells', 'Disease', 'Organelles'};
frequencies = [225, 220, 100, 93, 87, 65, 45, 27, 25, 24];

figure;
barh(frequencies);
set(gca, 'ytick', 1:length(words), 'yticklabel', words);

set(gca, 'YDir','reverse', 'FontSize', 10);
xlim([0 250]);
%% --------------------------------------------------------------------- %%
words = {'LLPS', 'Proteins', 'Condensates', 'Phase separation',...
    'Cellular', 'Molecules', 'Cells', 'Dynamic', 'RNA', 'Diseases'};
frequencies = [243, 129, 100, 77, 50, 33, 26, 24, 23, 20]; % Numeric array, not a cell array
figure;
barh(frequencies);
set(gca, 'ytick', 1:length(words), 'yticklabel', words);
set(gca, 'YDir','reverse', 'FontSize', 10);
xlim([0 250]);
