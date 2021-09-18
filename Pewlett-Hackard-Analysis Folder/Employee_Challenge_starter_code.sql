-- Use Dictinct with Orderby to remove duplicate rows (I didn't need to use this?)
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;



--MY Retirement Titles table and Unique Titles table are the same. I pulled from titles.to_date and filtered where said to_date
--is 9999-01-01 in order to show employees that are currently in the title. This removed my need for the distinct on() function
--Nelson said I should get full credit for it because I answered the original instructions better than the instructed deliverables.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO title_retire
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	    AND (ti.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Grabbed an impending retirement count for current titles
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM title_retire
GROUP BY title
ORDER BY COUNT DESC;

--Retrieved CURRENT employees (per title) born in 1965 that would be eligible for mentorship. I again deviated from the deliverable
--instructions. Instead of pulling to_date from dept_emp, I pulled it from title in order to filter for employees that are CURRENT
--to the TITLE, not just current to the company. Deliverable 2, instruction 4 gives us BAD filtered information. Distinct on () the 
--'first occurance' could just be giving us current employees in the WRONG department, and mentorship elibigibilty would be off.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	ti.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	    AND (ti.to_date = '9999-01-01')
ORDER BY e.emp_no;