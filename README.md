Team project 2020
 
Deadlines
19 June 23:59
 
Downgrade: every day from the deadline the mark drops by 15 percent.
 
Task
As part of the control homework, several tasks are required to be solved:
 
•       Subject area analysis;
•       Development of a conceptual data model;
•       Development of a logical/physical data model;
•       Deployment of a database in a DBMS;
•       Filling the database with test data;
•       Setting indexes;
•       Development of useful queries (only SELECT);
•       Creating triggers, procedures (functions) and views;
•       Report development in MS Excel 2016/2019 and in SSRS;
•       Writing a report on the work done;
•       Create a video presentation of the work done.
 
Control homework can be done in groups of 2-3 people. To do this, go to the “Users” tab in the Canvas LMS, go to the “HW” tab. You will see groups that you can join yourself. The more people in the group, the higher the requirements for the volume of work done. You should approve your group members with teacher’s assistants.
 
Even though this is a teamwork, the individual contribution of each participant is evaluated. If the workload of at least one of the participants is not obvious or too small compared to the work of the entire group, all participants receive a mark of 1 out of 10.
 
Define the boundaries of the subject area, analyse the sites, mobile applications, other software and documents used in the field you are considering. Within the boundaries of the subject area should be not only descriptive characteristics of certain objects of the real world, but also the results of the interaction of these objects (transactional data. At least two versions of transactional data).
 
Subject Area Description Requirements
 
•	The subject area does not have to be trivial. After you formulate the topic of your homework, consult with assistants or teachers. An interview with assistants or teachers is an important step in job planning;
 
•	The description should be designed in such a way that the information needs of users are obvious from the text;
 
•	Identify potential users of your database. Identify business functions that can be automated using a database and reports based on this data;
 
•	Development results should be closely related to the parameters of the subject area. No need to write queries that do not add value to potential users of your database (or software built on the basis of your database);
 
•	The text with the results of the analysis of the subject area should take up from 2 pages of printed text and include the following sections: general information about the subject area, the purpose of creating the database, possible database users, possible scenarios of user and database interaction, a list of the main entities of your subject area, processing algorithms data used in scenarios, a planned list of reporting forms, a possible software product architecture based on your database.
 
Database Design Requirements
 
•	Based on a detailed description of the subject area, develop a logical model in Chen's notation. You can use ERDPlus, or any tool that supports creating diagrams with the basic elements of Chen’s notation. Add charts to the report;
 
•	Convert the prepared model to a model in IDEF1X notation using the CA software, Erwin. To do this, create a logical-physical model;
 
•	Give entities and attributes meaningful names;
 
•	In the event that an entity has two or more key attributes and participates in the relationship as a parent, consider adding a surrogate primary key. This will simplify the work with data;
 
•	Indicate the correct data types not only in the logical part of the model, but also in the implementation for a specific server in the physical data model;
 
•	Insert detailed screenshots into the report with the display of data types in one diagram. If you have many tables, make a few diagrams and add all the diagrams to the word report.
 
Database Requirements
 
•	Number of tables - at least 8;
 
•	The database should be in the fourth normal form (4NF). The report needs to explain whether the 4NF scheme is consistent;
 
•	Data types should be selected taking into account the characteristics of each table field;
 
•	Fill at least one table with a large number of rows (about 1000 rows);
 
•	Select the most complex select query. Configure indexes and write down the results of the settings in a report indicating the query execution time before and after adding indexes;
 
•	The compressed zip SQL script with the structure and data should be attached to the general array of documentation submitted for verification.
Development Requirements
 
•	Add editable views to enable the users to enter or change business-critical data (3)
•	Create procedures or functions (depends on the platform chosen) and explain benefits from its usage in your subject area (2 complex procedures or functions);
•	Design one trigger to automate a business function or its part. Describe its purpose;
•	Write only those queries that are really needed in your subject area. No need to write code in the style of SELECT * FROM A. Such requests will not be accepted during evaluation.
 
The following are requirements for the composition and number of requests:
 
Query with correlated subquery in SELECT - 2
Subquery query in FROM (derived table) – 2
Query with correlated subquery in WHERE – 1
A query that uses window functions to compare data in different periods – 1
A query that uses window functions together with usual aggregate functions or with non-standard frame settings - 1
Query with aggregation and a JOIN expression that includes at least 2 tables – 3
Query with union, except or intersect - 1
Query with an outer join and checking for NULL - 1
Query with HAVING and Aggregation - 1
SELECT INTO query for data set preparation – 1

Video Requirements
 
To get a grade, you need to prepare a video (no more than 15-20 minutes) with a presentation of your work, after which it should be uploaded to YouTube, and the link sent to Canvas LMS. What should be in the video:
 
•	Presentation of the subject area. The purpose of developing a database. Benefits from implementing database-based software;
•	Description of models;
•	Overview of the architecture of the developed IT solution;
•	Demonstration of the most interesting queries, triggers and stored procedures;
•	Demonstration of Excel and SSRS reports (or BIRT);
•	Implementation of one business scenario with help of your database;
 
Creativity when creating a video is welcome and rewarded!
 
Report in Excel / SRSS Requirements
 
•	At least 2 SSRS (BIRT) reports:
o	Main Report - Aggregated Data with Detailed Links
o	detailed report taking parameters from a link
•	One dashboard in Excel with cross-tab, diagram and slicer.
•	Reports should relate to the task - should be useful for the subject area;
•	Developed reports should be updated upon opening, or by the click of a button;
•	Should be based on the three most interesting queries.
Attach the structure of the reporting forms to the general report on HW.
 
Requirements for the report on the work done
 
HW report in docx format containing a description of the results of your work. It is necessary to reflect the results of each task. The following mandatory requirements are shown below:
•	Title page;
•	Page numbers;
•	Indentation and alignment for paragraphs;
•	Screenshots must have captions;
•	Automatically generated table of contents;
•	Headers with nested structure. Each heading should reflect the content of the section;
•	One of the sections should be devoted to the roles of each participant in the HW project.
 
Send a link to the video on YouTube in Canvas LMS, archive (report in docx format, report in Excel / SRSS) into a zip document.

