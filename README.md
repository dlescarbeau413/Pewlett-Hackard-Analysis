# Pewlett-Hackard-Analysis

With a lot of employees set to head into retirement, we needed to find out who is retiring and what positions will be vacated.  We created two queries, one to help determine what positions will be vacated once these employees retire and a second to determine who are mentorship eligible. 

The first query we built was a list of employees who were born between January 1, 1952 and December 31, 1955. To do this, we retrieved the employee number, first name, last name from the employees table then grabbed the title, from date and the to date from the titles table. We joined these tables on the employee number to create our new retirement titles table which is 133,776 rows. We have a list of all of the employees who were born between January 1, 1952 and December 31,1955 along with all of the titles they held within the company. However, we do have duplicates of some of the employees because some of them have held multiple positions within the company. In order to get a sense of how many employees we have retiring, we need to get rid of the duplicate rows of data and only get their current position. 

To get the employees in the retirement titles table with their current position, we need to use the distinct on function. With this function, we will get the distinct names within this table to get the current position of each employee about to head into retirement. By selecting the distinct first name from the retirement titles table, we were able to delete the duplicate rows of data and bring the total number of rows to 90,398 total rows. We now know that 90,398 positions will be vacated from the people who are set to head into retirement. 

For the second query, we put together a mentorship eligibility table that list current employees who were born between January 1, 1965 and December 31, 1965. We did this by selecting the employee number, first name and last name and birth date from the employees table. From the department employee table, we took the from date and to date and from the titles table we just took the title. We were able to combine all of these tables with the employee number being the primary key. In this table we have 1,549 total employees mentorship eligible. 

With these two queries we are able to figure out if there isn’t  enough employees to mentor and fill the positions that will be vacated once the ‘silver tsunami’ of retire eligible employees hits. 

Analysis:


•	In the unique titles table, there are 7 titles held by the retirees. Assistant Engineer, Engineer, Manager, Senior Engineer, Senior Staff, Staff, Technique Leader that will be vacated. 

![]()

•	From the list of titles 64% of the retirees are either Senior Engineers or have the title Senior Staff.  This means that there will have to be a lot of hiring for senior positions within the company.


•	We are also able to figure out which departments will be hit the most  if we make a new table with the unique titles table and include the department name. We can refactor the query we made in steps 15-21 in deliverable 1 and instead of counting and grouping by titles, we use the count function and the group by function on the department name. Now we can also get a sense on which departments will get hit the most. After coming up with the query,  my results showed the two departments that are getting hit the most will be the Development department and the production department. This wasnt required but i was curious to see which departments were losing the most employees

 

Summary:
When the retirees start to leave leave there will be over 90,000 positions that will need to be filled within the company according to the unique titles query that we constructed. 

There are not enough employees to mentor the next generation of PH employees. Because there are only 1500 employees that are mentorship eligible. The solution in order to increase the amount of mentorship eligible employees would be to increase the range of the birthdate of the employees who would be mentorship eligible. 
