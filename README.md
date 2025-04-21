# Task 1: Data Cleaning and Preprocessing - Medical Appointment No Shows

## Overview
This repository contains my work for cleaning and preprocessing the "Medical Appointment No Shows" dataset. The dataset contains information about medical appointments in Brazil and whether patients showed up for their appointments.

## Repository Contents
- `medical_appointment_cleaning.ipynb`: Jupyter notebook with the complete data cleaning process
- `KaggleV2-May-2016.csv`: Original dataset file
- `cleaned_appointments.csv`: Cleaned dataset output
- `README.md`: This explanation file

## Steps Performed

### 1. Initial Data Exploration
- Loaded the dataset and examined its structure
- Checked basic statistics and data types
- Identified missing values and inconsistencies

### 2. Data Cleaning
- Handled missing values (though this dataset had no true nulls)
- Corrected data types (dates, categorical variables)
- Standardized inconsistent formats (column names, categorical values)
- Removed duplicate records
- Handled outliers and impossible values

### 3. Feature Engineering
- Created new features from existing ones (like day of week from appointment date)
- Encoded categorical variables appropriately
- Calculated age groups from age values

## Key Findings
- The original dataset had 110,527 records
- Column names were standardized to lowercase with underscores
- The 'Age' column had some impossible values (negative ages) which were handled
- Date columns were properly converted to datetime format
- No true null values were found, though some placeholder values existed

## How to Use
1. Clone this repository
2. Open the Jupyter notebook to see the complete cleaning process
3. The cleaned dataset is available as `cleaned_appointments.csv`

## Dependencies
- Python 3.x
- Pandas
- NumPy
- Jupyter Notebook

Note: The dataset was obtained from Kaggle (Medical Appointment No Shows).
