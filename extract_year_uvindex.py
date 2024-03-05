import pandas as pd
import os

# This function will extract the year from the filename and add it to the DataFrame
def add_year_to_dataframe(file_path):
    # Extracting the year from the file name
    year = file_path.split('-')[2].split('.')[0]
    df = pd.read_csv(file_path)
    # Adding the year column
    df['Year'] = year
    return df
files = [f'uv-melbourne-{year}.csv' for year in range(2007, 2023)]

# We will then create a list of DataFrames with the year column added
dataframes = [add_year_to_dataframe(f'D:\dataset\{file}') for file in files]

combined_df = pd.concat(dataframes, ignore_index=True)

combined_df.to_csv('D:\dataset\uv_year.csv', index=False)









