# World Layoff Project

## Project Overview
The **World Layoff Project** analyzes global layoffs across various industries, providing insights into company-specific and geographic trends. The project involves data cleaning using MySQL and data visualization with Power BI to derive key insights.

## Dataset

- **File Name:** `layoffs.csv`
- **Description:** The dataset contains information about company layoffs, including details on company names, locations, industries, total layoffs, and more.
- **Key Fields:**
  - `company`: Name of the company where layoffs occurred.
  - `location`: City where the company is headquartered.
  - `industry`: The industry sector of the company.
  - `total_laid_off`: The total number of employees laid off.
  - `percentage_laid_off`: Percentage of the workforce affected.
  - `date`: The date of the layoffs.
  - `stage`: The financial stage of the company (e.g., Post-IPO).
  - `country`: The country where the company operates.
  - `funds_raised_millions`: The total funds raised by the company in millions.

## Data Cleaning & Processing

- **Tools Used:** MySQL
- **Steps:**
  1. **Data Import and Inspection:**
     - Loaded the raw dataset for preliminary analysis.
  2. **Handling Missing Data:**
     - Replaced missing values in key fields like `percentage_laid_off` with appropriate values.
  3. **Data Normalization:**
     - Standardized company names and locations for consistency.
  4. **Filtering and Aggregation:**
     - Filtered the data based on specific criteria such as `industry` or `country`.
  5. **Date Formatting:**
     - Reformatted date fields to ensure consistent formats.
  6. **Insight Derivation:**
     - Aggregated the data to derive key insights, such as total layoffs by country or industry.

## Insights & Visualizations

- **Key Insights:**
  - Top industries affected by layoffs.
  - Geographic distribution of layoffs (country-wise analysis).
  - The relationship between a company’s financial stage and its layoff percentage.
  
- **Visualization Tools:** Power BI
  - Created interactive charts to display layoffs by industry and geographic region.
  - Showcased layoffs in relation to company funding stages.

## Project Conclusion
This project provides valuable insights into global layoffs, revealing how economic conditions affect industries differently. The data cleaning and processing in MySQL allowed for deeper analysis, while Power BI visualizations helped present the data in an intuitive format.

## How to Run the Project

1. **Raw Data:** 
   - The raw dataset is available in the `layoffs.csv` file.
2. **MySQL Code:** 
   - The MySQL code used for data cleaning is included in the `layoff.sql` file.
3. **Visualization:** 
   - Power BI was used to create the visual reports.

## Contact Information

For any questions or contributions, feel free to reach out via the contact section.

