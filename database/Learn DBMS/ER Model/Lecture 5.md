Types of Relationship
![[Pasted image 20240527093040.png]]
#### 1. One-to-One Relationship:

- **Definition:** Each record in Table A is associated with one and only one record in Table B, and vice versa.
- *Setup:** Include a [foreign key](https://www.geeksforgeeks.org/foreign-key-constraint-in-sql/) in one of the tables that references the primary key of the other table.
- **For example:** Tables users and user profiles, where each user has a single corresponding profile.
#### 2. One-to-Many Relationship

- **Definition:** Each record in Table A can be associated with multiple records in Table B, but each record in Table B is associated with only one record in Table A.
- **Setup:** Include a foreign key in the “**many**” side table (Table B) that references the primary key of the “**one**” side table (Table A).
- **For example:** Tables departments and employees, where each department can have multiple employees, but each employee belongs to one department.

#### 3. Many-to-Many Relationship

- **Definition:** Each record in Table A can be associated with multiple records in Table B, and vice versa.
- **Setup:** Create an intermediate table (also known as a junction or linking table) that contains foreign keys referencing both related tables.
- **For example:** Tables students and courses, where each student can enroll in multiple courses, and each course can have multiple students.
#### 4. Many-to-One Relationship

- **Definition:** Multiple records in table B can be associated with one record in table A.
- **Setup:** Crate a Foreign key in “Many Table” that references to Primary Key in “One Table”****.****
- **Example:** Table Teachers and Courses, many courses can be taught by single teacher.
  
#### 5. Self-Referencing Relationship

- **Definition:** A table has a foreign key that references its primary key.
- **Setup:** Include a foreign key column in the same table that references its primary key.
- **For example :** A table employees with a column **manager_id** referencing the same table’s **employee_id**.