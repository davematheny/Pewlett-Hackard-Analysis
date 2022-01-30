--Deliverable 1

--retirement_titles
select
a.emp_no, 
a.first_name,
a.last_name,
b.title, 
b.from_date,
b.to_date
INTO retirement_titles
FROM Employees a
inner join titles b on a.emp_no = b.emp_no
where a.birth_date between '1/1/1952' and '12/31/1955'
order by a.emp_no


--unique_titles
SELECT DISTINCT ON (a.emp_no) a.emp_no, 
	a.first_name,
	a.last_name,
	a.title 
INTO unique_titles
FROM retirement_titles as a
where to_date  = '9999-01-01'
ORDER BY a.emp_no asc, a.to_date desc;

--unique_titles
SELECT COUNT(a.title), a.title
INTO retiring_titles
FROM unique_titles as a
GROUP BY a.title
ORDER BY COUNT(a.title) desc;
--------------

--Deliverable 2
--mentorship_eligibilty
SELECT DISTINCT ON (a.emp_no) a.emp_no,
a.first_name,
a.last_name,
a.birth_date,
b.from_date,
b.to_date,
c.title
INTO mentorship_eligibilty
FROM employees as a
INNER JOIN dept_emp as b ON (a.emp_no = b.emp_no)
INNER JOIN titles as c ON (a.emp_no = c.emp_no)
WHERE (a.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (c.to_date = '9999-01-01')
AND (b.to_date = '9999-01-01')
ORDER BY a.emp_no Asc


