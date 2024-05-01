import matplotlib.pyplot as plt
import pandas as pd
data = {
    'Field': [
        'Other', 'Psychology', 'Biochemistry, Genetics and Molecular Biology',
        'Decision Sciences', 'Business, Management and Accounting', 'Arts and Humanities',
        'Mathematics', 'Engineering', 'Social Sciences', 'Computer Science', 'Medicine'
    ],
    'Percentage': [14.3, 1.8, 2.0, 3.1, 3.3, 3.8, 5.1, 7.9, 15.6, 22.9, 20.3]
}

df = pd.DataFrame(data)
fig, ax = plt.subplots()
wedges, texts, autotexts = ax.pie(
    df['Percentage'], 
    labels=df['Field'], 
    autopct='%1.1f%%', 
    startangle=140, 
    colors=plt.cm.tab20.colors
)
table = plt.table(cellText=df.values, colLabels=df.columns, loc='right')

plt.subplots_adjust(left=0.2, bottom=0.2, right=0.8)

ax.axis('equal')

ax.set_frame_on(False)

ax.axes.get_yaxis().set_visible(False)
ax.axes.get_xaxis().set_visible(False)

ax.xaxis.set_ticks_position('none')
ax.yaxis.set_ticks_position('none')

table.auto_set_font_size(False)
table.set_fontsize(10)
table.scale(1, 1.5)  
for _, cell in table.get_celld().items():
    cell.set_edgecolor('none')

plt.show()
