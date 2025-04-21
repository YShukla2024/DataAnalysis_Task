ey Cleaning Decisions Made:

Missing Data: Critical columns with missing values were dropped, while less critical ones were imputed

Data Types: Ensured dates are datetime objects and categorical variables are standardized

Age Data: Removed negative ages which are biologically impossible

Handcap Variable: Converted to binary (0/1) for consistency

Duplicates: Removed exact duplicate appointments while flagging potential patient-day duplicates

New Features: Added calculated fields like wait time and age groups for analysis
