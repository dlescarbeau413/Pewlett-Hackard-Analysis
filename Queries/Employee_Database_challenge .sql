-- Use Dictinct with Orderby to remove duplicate rows
--Deliverable 1: 1-7
SELECT 
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
-- INTO retirement_titles
FROM employees as e
INNER JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE birth_date between '1952-01-01' and '1955-12-31'
ORDER BY e.emp_no;
-------
--Deliverable 1: 8-14
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--Deliverable 1: 15-21
SELECT 
COUNT(title),
title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;