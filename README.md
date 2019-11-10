# sql-challenge
In this SQL challenge, we were given six sets of data in CSV files consisting of employee data.
- Employees
- Departments
- Employee to Department relationship table
- Department Managers
- Titles
- Salaries

I used a variety of SQL tools to diagram the table relationships and convert the CSV data to SQL database tables. 
From the converted SQL database, I made additional queries and analyses. 

1. I created an ERD (Entity Relationship Diagram) using [QuickDBD](https://www.quickdatabasediagrams.com/) to visually indicate 
the table relationships and data constraints. <br><br>
QuickDBD required simple text as ([quickdbd-schema.txt](quickdbd-schema.txt)), then output the diagram to a PNG image ([QuickDBD-Employee-Diagram.png](QuickDBD-Employee-Diagram.png)).

2. Using the ERD as a guide, I created a db schema in PostgreSQL via pgAdmin ([schema.sql](schema.sql)). To complete the conversion, I imported each CSV into each new SQL db table.

3. With the new db, I made several SQL queries to discover specific information about the company's employees, managers, and departments. The queries included table joins, department groupings, filtering, counts, and subqueries ([query.sql](query.sql)). 

4. I used SQL Alchemy to connect to the PostgreSQL db and manipulate the data using Python Pandas ([salaries_by_title.ipynb](salaries_by_title.ipynb)).

5. Last but not least, I analyzed some of the data visually by creating a Matplotlib bar chart of 'Average Salaries by Title' ([salaries_by_title_chart.png](salaries_by_title_chart.png)). 
