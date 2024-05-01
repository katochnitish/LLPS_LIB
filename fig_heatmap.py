import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

# Data extracted manually from the user's image
chatgpt_ratings = [3, 4, 4, 4, 3, 4, 3, 4, 4, 4, 4, 3, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 3, 4, 5, 3, 5, 3, 4, 4]
gemini_ratings = [5, 4, 5, 4, 5, 4, 2, 4, 4, 3, 3, 4, 5, 5, 4, 4, 5, 5, 4, 3, 3, 4, 4, 5, 5, 4, 5, 4, 5, 5]

# Creating a pandas DataFrame
data = pd.DataFrame({
    'ChatGPT': chatgpt_ratings,
    'Gemini': gemini_ratings
})

# Melt the DataFrame to be long-form
data_long = pd.melt(data.reset_index(), id_vars='index', value_vars=['ChatGPT', 'Gemini'])
data_long.rename(columns={'index': 'Query', 'variable': 'AI', 'value': 'Score'}, inplace=True)

# Pivot the data to have queries on the x-axis and AI models on the y-axis
data_pivot = data_long.pivot(index='AI', columns='Query', values='Score')
# Correcting the x-axis to display from 1 to 30 without zero, adjusting the figure size and font size as well

# Increase the font scale for better readability
sns.set(font_scale=1.5)

# Adjust the figure size to fit the new axis requirements
fig, ax = plt.subplots(figsize=(24, 4))

# Pivot the data to have queries on the x-axis and AI models on the y-axis
data_pivot = data_long.pivot(index='AI', columns='Query', values='Score')

# Create the heatmap
heatmap = sns.heatmap(data_pivot, annot=True, fmt="d", cmap='coolwarm', linewidths=.5, cbar_kws={'label': 'Accuracy score'})

# Set title and labels with increased font sizes for better visibility
# heatmap.set_title('Heatmap of Accuracy Scores for ChatGPT and Gemini', fontsize=18)
heatmap.set_xlabel('Queries', fontsize=16)
heatmap.set_ylabel('AI Model', fontsize=16)

# Adjust x-axis to show labels from 1 to 30
ax.set_xticks(np.arange(len(chatgpt_ratings)) + 0.5)
ax.set_xticklabels(np.arange(1, len(chatgpt_ratings) + 1))

# Invert y-axis to have the AI models in the right order
plt.gca().invert_yaxis()

# Rotate the x-axis labels for better readability
plt.xticks(rotation=0)

# Show the heatmap
plt.tight_layout()
plt.show()
