PART 1
1. Downloaded the MySQL server from the provided link in the task3.1 doc
2. Install MySQL server on VM.
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Install.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Install.png)
3. Select a subject area and describe the database schema, (minimum 3 tables)
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Schema%20DB.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Schema%20DB.png)
4. Create a database on the server through the console.
- Created a database using the command: CREATE DATABASE forum;
- Created tables:
  - Create table users:
![Image alt](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Create%20table1.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Create%20table1.png)

  - Create table topics:
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Create%20table2.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Create%20table2.png)

  - Create table messages and add Foreign key:
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Create%20table%203%20and%20add%20key6.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Create%20table%203%20and%20add%20key6.png)
  
5. Fill in tables.

*-Fill table users*
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Fill%20table1.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Fill%20table1.png)

*-Fill table topics*
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Fill%20table%202.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Fill%20table%202.png)

*-Fill table messages*
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Fill%20table3.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Fill%20table3.png)

*-Add key*
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Add%20key.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Add%20key.png)

6. Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY.
  + Operator WHERE
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/operator%20WHERE.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/operator%20WHERE.png)

  + Operator GROUP BY
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/operator%20GROUP%20BY.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/operator%20GROUP%20BY.png) 

  + Operator ORDER BY
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/OPERATOR%20ORDER%20BY.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/OPERATOR%20ORDER%20BY.png)

7. Execute other different SQL queries DDL, DML, DCL.
8. Create a database of new users with different privileges. Connect to the database as a new user and verify that the privileges allow or deny certain actions.

9. Make a selection from the main table DB MySQL.


PART 2

10. Make backup of your database.
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/backuppng.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/backuppng.png)

- backup completed
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/backup%20completed.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/backup%20completed.png)


11. Delete the table and/or part of the data in the table.
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Delete%20table.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Delete%20table.png)

12. Restore your database.
13. Transfer your local database to RDS AWS.
14. Connect to your database.
15. Execute SELECT operator similar step 6.
16. Create the dump of your database.
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Dump%20.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Dump%20.png)

PART 3

17. Create an Amazon DynamoDB table
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/DB%20on%20AWS.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/DB%20on%20AWS.png)

18. Enter data into an Amazon DynamoDB table.
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/DynamoDB.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/DynamoDB.png)

19. Query an Amazon DynamoDB table using Query and Scan.
- Query
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Query_DynamoDB.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Query_DynamoDB.png)

- Scan
![Image alt] (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Scan_DynamoDB.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module3/Screenshots_mysql/Scan_DynamoDB.png)

