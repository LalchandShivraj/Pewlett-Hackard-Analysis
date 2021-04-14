
--***************************
--DELIVERY 1 ** DELIVERY 1 **
--***************************

--#1 to 5 - Join the Employees and Titles tables and createa table called retirement_titles.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees e
LEFT JOIN titles t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, t.title;
--#6 See Data folder for exported retirement_titles.csv file.
--#7 Check retirement_titles table.
SELECT * FROM retirement_titles;
--Copy code from Employee_Challenge_starter_code.sql.
--#8,9,10,11,12
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
--#13 See Data folder for exported unique_titles.csv file.
--#14 Confirm unique_titles.
SELECT * FROM unique_titles;
--#15,16,17,18 Create the number of retiring employees list.
SELECT count(*) count, title
INTO retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY count desc;
--#19 See Data folder for exported retiring_titles.csv file.
--#20 Confirm retiring_titles table.
SELECT * FROM retiring_titles;
--#21 Employee_Database_challenge.sql file saved to Queries folder.

--***************************
--DELIVERY 2 ** DELIVERY 2 **
--***************************

--#1 to 9 - Create mentorship_eligibility table.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibility
FROM employees e
LEFT JOIN dept_emp d
ON (e.emp_no = d.emp_no)
LEFT JOIN titles t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	  AND (d.to_date = '9999-01-01')
ORDER BY e.emp_no;
--#10 See Data folder for exported mentorship_eligibility.csv file.
--#11 Confirm mentorship_eligibility table.
SELECT * FROM mentorship_eligibility;

--**********************************
--More Analysis
--**********************************

SELECT count(*) count, title
INTO mentoring_titles
FROM mentorship_eligibility 
GROUP BY title 
ORDER BY count desc;

select r.title, r.count retiring, m.count mentoring
from mentoring_titles m
right join retiring_titles r
on (r.title = m.title);

--**********************************
--Maintenance Section
--**********************************
--drop table retirement_titles;
--drop table unique_titles;
--drop table retiring_titles;
--drop table mentorship_eligibility;


