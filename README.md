# Medical Appointment No Shows - Data Cleaning

This repository contains the data cleaning and preprocessing steps for the Medical Appointment No Shows dataset from Kaggle.

## Files
- `data_cleaning.py`: Python script for cleaning the data
- `cleaned_medical_appointments.csv`: Cleaned dataset
- `KaggleV2-May-2016.csv`: Original dataset (if included)
- `requirements.txt`: Dependencies
- (Python 3.x,Pandas,NumPyJupyter Notebook)

## Cleaning Steps
1. Handled missing values (though original dataset had none)
2. Removed duplicate records
3. Converted date columns to proper datetime format
4. Standardized categorical variables (No-show to binary)
5. Handled age outliers
6. Added new features (waiting days, day of week)

## Usage
1. Install requirements: `pip install -r requirements.txt`
2. Run the cleaning script: `python data_cleaning.py`
