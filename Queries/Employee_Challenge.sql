-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO temptable
FROM Employees a
inner join 
WHERE _______
ORDER BY _____, _____ DESC;


emp_no, first_name, and last_name


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