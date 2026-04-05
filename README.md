## Data Exploration

In this step, the Online Retail II dataset was loaded and explored.

In this step, we checked:

- Dataset shape and structure
- Data types validation 
- Missing values
- Negative quantities (returns)
- Zero or negative price 
- Cancelled invoices

Main findings:

- 1,067,371 - total rows
- 243,007 - missing Customer Id
- 22,950 - negative quantities
- 6,207 - zero or negative prices 
- 19,494 - cancelled invoices

## Data Cleaning

In this step, the dataset was cleaned and prepared for analysis.

- Removed rows with missing Customer Id
- Removed cancelled invoices
- Removed negative quantities (returns)
- Removed zero or negative prices
- Converted InvoiceDate to datetime format
- Created Revenue column

The Dataset is ready for cohort analysis.