# Pewlett-Hackard-Analysis

## Overview
Pewlett-Hackard is a company that has thousands of employees of which many are either retiring or of retiring age. The is great concern for the loss of knowledge as this happens. 
The company used excel and VBA to manage employee data, but needs to migrate to a relational database and SQL to analyse data faster and more efficient.

The task at hand is to:

1. Determine the number of retiring employees per title
2. Identify who are eligible to participate in a mentorship program to transfer knowledge.

### Prior work done.

. Install PostgeSQL and pgAdmin
. Use Quick DBD to create an ERD of schema of the tables and their relationships.
. Create database and tables
. Load data into the tables from csv files

## Results

Using SQL to query, create and export data, the following results were provided in the form of csv files export to the Data folder:

1. The retiring titles based on employee's birthdays.
2. The unique titles that were eligible for retirement.
3. The Number of Retiring Employees for each of these titles.
4. The Employees Eligible for the Mentorship program.

## Summary
The analysis confirms that there are a many aging employees that will be retiring. Additionally, the number of employees eligible for mentorship is very small compared to the workforce that will be lost to retirement (see Compare_retiring_vs_mentoring.png). Further, there is no mentorship for the two managers retiring.

The analysis work was done and the following output are provided for review:

1. Employee_Database_Challenge.sql (Queries folder)
2. retirement_titles.csv
3. unique_titles.csv
4. retiring_titles.csv
5. mentoring_eligibility.csv
6. mentoring_titles
7. Comparison_of_retiring_vs_mentoring.png
![Compare_retiring_vs_mentoring](https://user-images.githubusercontent.com/78666055/114741880-34c4fb80-9d19-11eb-98d9-660aba5e7c70.png)

8. Count_of_Titles_Retiring.png
![Count_of_Titles_Retiring](https://user-images.githubusercontent.com/78666055/114741973-460e0800-9d19-11eb-81d2-af39e0a4e95c.png)

9. Count_of_Titles_to_be_Mentored.png
![Count_of_Titles_to_be_Mentored](https://user-images.githubusercontent.com/78666055/114742120-68a02100-9d19-11eb-927f-a0455a97f118.png)

