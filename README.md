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

## Database Creation 

In this step, the cleaned dataset was saved into a SQLite database.

What was done:
- Created a SQLite database.
- Saved cleaned data into a table `orders`

Database file created : `database/customer_retention.db`
Table available: `orders`


## Cohort Analysis

In this step, cohort data was prepared using SQL.

What was done:

- Identified each customer's first purchase date 
- Assigned each customer to a cohort based on their first purchase month (`cohort_month`)
- Extracted the order month for each transaction (`order_month`)
- Calculated the number of months since the first purchase (`months_since_first_purchase`)

Result:

A new dataset `cohort_data` was created containing:
- `customer_id`
- `first_purchase_date`
- `cohort_month`
- `order_month`
- `months_since_first_purchase`

## Cohort Table Creation 

In this step, a cohort dataset was created and saved as a table in the database.

As a result a new table ws created - `cohort_data`

this table will be used for retention analysis.

## 