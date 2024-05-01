close all;clear;clc;
%% -------------------------------------------------------------------- %%
% Data for Cosine Similarity Index
Questions = 1:30; % Questions 1 through 30
CosineSimilarityIndex = [0.62, 0.59, 0.77, 0.73, 0.78, 0.66, 0.63, 0.66, ...
                         0.68, 0.45, 0.55, 0.6, 0.75, 0.6, 0.62, 0.68, 0.69, ...
                         0.63, 0.53, 0.57, 0.52, 0.57, 0.68, 0.79, 0.48, 0.59, ...
                         0.54, 0.68, 0.69, 0.42];
figure;
plot(Questions, CosineSimilarityIndex, '-o', ...
     'MarkerSize', 8, ...
     'LineWidth', 1.5, ...
     'MarkerEdgeColor', 'b', ...
     'MarkerFaceColor', 'r');

ylim([0.4 1]);
xlabel('Queries', 'FontSize', 12);
ylabel('Cosine Similarity Index (CSI)', 'FontSize', 12);

ax = gca;
ax.FontSize = 15; 

% Add grid for better readability
% grid on;
meanCosine = mean(CosineSimilarityIndex);

