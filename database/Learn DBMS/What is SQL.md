> **What is Information ?**
- Information is a group of data that collectively carries a logical meaning.
> **What is Data ?**
- Data is a collection of facts, figures and values from different resources in raw format.
>**What is Database ?****
- Database is a location where data is stored in certain format to access data easily.
>**Type of Data.** 
 - The data is classified into majorly four categories:**
	 - Nominal
	 - Ordinal
	 - Discrete
	 - Continuous
 ![[Pasted image 20240526113440.png]]

**How the Data Stored in Normal Computers ?**
- On normal computer the data stored in file system it can be of NTFS, Apple File System, EXT, Network File System, Extent File System, FAT32, RAID etc.
>**Disadvantage of File system .**
- Limited data sharing and lock of security.
- Data Redundancy ( Duplication ).
- Different of getting Quick answer .
- Data Dependency over the file system.
>**What is Data Base Management System (DBMS) ??**
- It is a software which is used to store, retrieve , manage data in the database.

#### History of SQL
SQL was invented in the 1970s based on the relational data model. It was initially known as the structured English query language (SEQUEL). The term was later shortened to SQL. Oracle, formerly known as Relational Software, became the first vendor to offer a commercial SQL relational database management system.
#### What are the components of a SQL system?
Relational database management systems use structured query language (SQL) to store and manage data. The system stores multiple database tables that relate to each other. MS SQL Server, MySQL, or MS Access are examples of relational database management systems. The following are the components of such a system.
#### What is SQL and SQL command?

Structured query language (SQL) is a programming language for storing and processing information in a relational database. A relational database stores information in tabular form, with rows and columns representing different data attributes and the various relationships between the data values. You can use SQL statements to store, update, remove, search, and retrieve information from the database.
![[Pasted image 20240526125331.png]]


> **Different Scheme to manage data in a SQL server or Subset of SQL.**

- **DDL**: Data Definition language.
	- It deals with database schemas and description of how the data should reside in the database.
	- the command are **Create , Alter, Drop**

- **DCL**: Data control language.
	- It deals with access control of the database.
	- It include command such as **GRANT, REVOKE** etc.
	- It mostly concerned with rights, permissions and other controls of the data base system.

- **DML**: Data Manipulation Language.
	- It deals with data manipulation and include most common SQL commands.
	- It include command such as **INSERT, MERGE, UPDATE, DELETE, TRUNCATE** etc.
- **TCL**: Transaction Control language.
	- It deals with a transaction with in a database means to automatically make changes in databases.
	- e.g. The database used the ROLLBACK command to undo an erroneous transactions.
#### Advantages of SQL :
- SQL is easy to Learn
- SQL is well defined
- In SQL we can create multiple views.
- SQL queries as portable
- SQL is a interactive language

#### Types of Databa**se**:

1. **Relational Database**
2. **NoSQL Database**
3. **Object-Oriented Database**
4. Hierarchical Database
5. Distributed Database
6. Centralized Database
7. Operational Database
8. Graph Database
9. Cloud Database
10. Network Database
11. Enterprise Database
12. End-User Database
13. Commercial Database
14. Open-Source Database
15. Data Warehouse
16. Online Transaction Processing Database (OLPTD)
17. Multimodal Database
18. Document/JSON Database
19. **In-Memory Database**
20. Time-Series Database
21. Spatial Database
22. Multimedia Database 
23. Columnar Database
24. XML Database
25. NewSQL Database
26. Blockchain Database
27. Personal Database
##### Relational Database :
These databases structured data into organized tables that have predefined connections between them. Data manipulation and querying and performed using SQL (Structured Query Language). Well-known instance encompass MySQL, PostgreSQL, Oracle Database, and Microsoft SQL Server.

##### NoSQL database :
NoSQL databases are created to handle data that doesn't fit neatly into the strict setup of traditional relational databases e.g. MongoDB(Document Oriented DB).

##### Object-Oriented Database:
These databases hold objects(data and actions) utilized in object-oriented programming. They work well for applications with intricate data designs, like scientific simulations or multimedia software.

##### In-Memory Database:
In these databases, data is kept in the primary memory(RAM) rather than on a disk, leading to quicker data retrieval. They're employed in application that demand instant data processing and top-notch performance

### What are SQL standards ?
SQL standards are a set of formally defined guidelines of the structured query language (SQL). The American National Standards Institute (ANSI) and International Organization for Standardization (ISO) adopted the SQL standards in 1986. Software vendors use the ANSI SQL standards to build SQL database software for developers.

### What is SQL injection?
SQL injection is a cyberattack that involves tricking the database with SQL queries. Hackers use SQL injection to retrieve, modify, or corrupt data in a SQL database. For example, they might fill in a SQL query instead of a person's name in a submission form to carry out a SQL injection attack.

### What is MySQL?
MySQL is an open-source relational database management system offered by Oracle. Developers can download and use MySQL without paying a licensing fee. They can install MySQL on different operating systems or cloud servers. MySQL is a popular database system for web applications. 

#### **SQL vs. MySQL**
Structured query language (SQL) is a standard language for database creation and manipulation. MySQL is a relational database program that uses SQL queries. While SQL commands are defined by international standards, the MySQL software undergoes continual upgrades and improvements.

### What is NoSQL?

[NoSQL](https://aws.amazon.com/nosql/) refers to non-relational databases that don't use tables to store data. Developers store information in different types of NoSQL databases, including graphs, documents, and key-values. NoSQL databases are popular for modern applications because they are horizontally scalable. Horizontal scaling means increasing the processing power by adding more computers that run NoSQL software.

#### **SQL vs. NoSQL**

Structured query language (SQL) provides a uniform data manipulation language, but NoSQL implementation is dependent on different technologies. Developers use SQL for transactional and analytical applications, whereas NoSQL is suitable for responsive, heavy-usage applications.



## What is a SQL server?

SQL Server is the official name of Microsoft's relational database management system that manipulates data with SQL. The MS SQL Server has several editions, and each is designed for specific workloads and requirements.