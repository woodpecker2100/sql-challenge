--It was too difficult to convert the CSV to insert values so I used this query (replace the path with the applicable folder where the file is stored)

COPY employees 
FROM 'C:\sql-challenge\EmployeeSQL\data\employees.csv'
DELIMITER ','
CSV HEADER;