import pandas as pd

# We will start by creating a function that processes a single year's data.
def process_yearly_data(file_path):

    df = pd.read_csv(file_path)
    df['Date-Time'] = pd.to_datetime(df['Date-Time'])
    df.set_index('Date-Time', inplace=True)
    daily_max = df['UV_Index'].resample('D').max()
    yearly_mean_max_uv = daily_max.mean()
    year = file_path.split('-')[2].split('.')[0]
    return year, yearly_mean_max_uv

# List of file paths for each year's data
file_paths = [f'D:/dataset/uv-melbourne-{year}.csv' for year in range(2007, 2023)]
results = [process_yearly_data(file) for file in file_paths]
results_df = pd.DataFrame(results, columns=['Year', 'Average Max UV Index'])
results_df.head()  

print(results_df)

output_file_path = 'D:/dataset/average_index_mel.csv'
results_df.to_csv(output_file_path, index=False)

output_file_path