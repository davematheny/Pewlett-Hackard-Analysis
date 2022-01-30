# Pewlett-Hackard-Analysis: By David Matheny 1/30/2022
# Using Azure Post Azure Database for PostgreSQL server, pgAdmin 4

# Overview of the analysis:
The assignments is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

# Results:

## retirement_titles:  The number of retiring employees per title is 133776 this includes duplicates. (See image below of the counts)
![Results1](Resources/retirement_titles.png)

## unique_titles:  The number of retiring employees per title is 72458 minus the duplicates. (See image below of the counts)
![Results2](Resources/unique_titles.png)

## retiring_titles:  The number of titles that will be retiring is 7. (See image below of the counts)
![Results3](Resources/retiring_titles.png)

## mentorship_eligibilty:  There are 1549 employees who are eligible to participate in a mentorship program.  (See image below of the counts)
![Results4](Resources/mentorship_eligibilty.png)

# Summary:

## How many roles will need to be filled as the "silver tsunami" begins to make an impact?  
We will have 72458 roles that will need to be filled by this giant silver tsunami.

## Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?  
We have only 1549 who are eligible to participate in a mentorship program(as mentees), this could be a signficant problem.

## 1st additional Query:  Are there any titles that are retiring that we dont have in our mentorship_eligibilty?
I found that we have two manager roles that are going to retire that we dont have in mentorship_eligibilty.  We should not have been suck a greedy company and hired more managers in the mix so we wouldnt have to face this terrible dilemma.
![Results5](Resources/firstquery.png)

## 2nd additional Query:  Are there any titles in the mentorship_eligibilty that arent retiring, this could be helpful to know since they could be cut from the mentorship program since they are not needed?
It appears we dont have any titles we could cut from mentorship_eligibilty.
![Results6](Resources/secondquery.png)