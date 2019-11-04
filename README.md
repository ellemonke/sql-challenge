# sql-challenge
In this SQL challenge, we were given six sets of data in CSV files consisting of employee data.
- Employees
- Departments
- Employee to Department relationship table
- Department Managers
- Titles
- Salaries

I used a variety of SQL tools to diagram the table relationships and convert the data to SQL database tables. 
From the converted SQL database, I made additional queries. 

1. I created an ERD (Entity Relationship Diagram) using QuickDBD (https://www.quickdatabasediagrams.com/) to visually indicate 
the table relationships and data constraints. <br><br>
QuickDBD required simple text to create the diagram (quickdbd-schema.txt). I then exported the diagram into a PNG image file (QuickDBD-Employee-Diagram.png). 
2. Using the ERD as a guide, I created a database schema in PostgreSQL via pgAdmin (schema.sql). <br>
To complete the CSV-to-SQL conversion, I then imported each CSV into the each new SQL database table.
3. With the new database, I was able to make several SQL queries to discover specific information about the company's employees, managers, and departments. <br>
The queries included table joins, department groupings, filtering, counts, and subqueries (query.sql). 
4. In addition to converting CSV files to a SQL database, I used SQL Alchemy to connect to the PostgreSQL database and manipulate the data using Python Pandas (salaries_by_title.ipynb).
5. Last but not least, I could analyze the data visually by creating a Matplotlib bar chart of 'Average Salaries by Title' (salaries_by_title_chart.png). 
