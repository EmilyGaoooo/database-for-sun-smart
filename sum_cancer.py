# Since the state was reset, we'll need to recreate the code to process the dataset based on the user's requirements.
# Assuming the file is an Excel file (.xlsx) given the mention of "xlsv" which might be a typo for "xlsx".

import pandas as pd

# Replace 'your_file.xlsx' with the actual path to the Excel file.
file_path = 'D:/dataset/cancer.xlsx'

# Read the Excel file into a DataFrame
df = pd.read_excel(file_path)

# Filter the DataFrame to only include the years 2017-2022
filtered_df = df[df['Year'].between(2007, 2022)]

# Group by the 'Year' column and sum the 'Count' for each year
summed_df = filtered_df.groupby('Year')['Count'].sum().reset_index()

# Saving the results to a new CSV file
output_file_path = 'D:/dataset/summed_counts_2017_2022.csv'
summed_df.to_csv(output_file_path, index=False)

output_file_path
