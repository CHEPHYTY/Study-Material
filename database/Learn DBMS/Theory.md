### **Data Abstraction** in database:
Database systems are built complex ways of organizing data. To make it easier for people to use the database, the creators hide the complicated stuff that users don't need to worry about. This hiding of unnecessary things from users is called data abstraction.

**Data abstraction levels** 
There are mainly there level of data Abstraction.
- Physical level
- Logical level
- View level

![[Pasted image 20240526204005.png]]

**Physical level:**
This is the lowest level of data abstraction it describes how data is actually stored in database its structure, and how it's accessed.. We can get the complex data structure details at this level.

**Logical level:**
This is the middle level of 3-level data abstraction. It describes what data is stored in database.

Explains what data is stored and how it's related. This layer is like a blueprint of the raw data, but doesn't include how the end user will view it.

**View level:**
This is the Highest level of data abstraction. This level describes the user interaction with database system.

This level includes various views that each define a portion of the total data. At this level, the user sees the data as presented by an application interface, and may be able to interact with it or just view it.

### Database Architecture:
Database Management System architecture, refers to the structural framework and organization of a database management system. It defines how the various components of the system work together to store, manage, and retrieve data efficiently.

**Type of DBMS Architecture:**

There are several types of DBMS Architecture. Choice of architecture depends on factors such as the type of database(e.g. relational, NoSQL) and the specific need of an application.
- 1- Tier Architecture.
- 2- Tier Architecture.
- 3- Tier Architecture.
>1- Tier Architecture:
	In 1- Tier architecture the entire database application, including the user interface, application logic, and data storage, resides on a single machine or computer.

	e.g. An illustration of a straight forward single-tier architecture can be seen when you install a database on your system and use it to practice SQL queries.

>2- Tier Architecture:
	In 2- Tier Arch. the presentation layer runs on a client (PC, Mobile, Tablet, etc.) and data is stored on a server.
	Two tier architecture provides added security to the DBMS as it is not exposed to the end-user directly. It also provides direct and faster communication.
	
	![[Pasted image 20240526210051.png]]

e.g. Old Railway Ticket booking Database system.

> 3- Tier Architecture
	It separates the application into there logical distinct layers presentation, application, and data layer.
	
- Presentation Layer(Client Tier) : It handles the user interface e.g. your PC, Tablet, Mobile, etc.
- Application layer(Middle Tier) :It manages business logic e.g. server.
- Data layer (Data source Tier): It manages data storage and processing e.g. Database Server![[Pasted image 20240526222043.png]]
#### **Advantage of 3- Tier Architecture**
- Scalability : Easily adjust each tier to handle changing user demands.
- Modularity and Maintainability: Simplify maintenance by separating responsibility.
- Security: Protect sensitive data with an additional layer.
- Performance: Optimize presentation and application tiers for better performance.
#### Disadvantage of 3-tier architecture
- The disadvantages of 3-Tier Architecture include increased complexity, potential latency issues, longer development time, resource overhead, and the possibility of bottleneck

## Data Model

A data model within a Database Management System(DBMS) serves as an abstract representation of how data gets structured and organized within a database.

In outlines the logical arrangement of data and the connections between various data components.

Data models play a crucial role in comprehending and shaping databases, acting as a vital link between real-world entities and the actual storage of data within the database.
#### Types of Data Model
- Hierarchical Data Model
- Network Data Model
- Relational Data Model
- Entity-Relationship Model
- Object-Oriented Data Model
- NoSQL Data Model

1. **Hierarchical Data Model:** This model portrays data in a manner resembling a tree structure, where each record maintains a parent-child relationship. Its primary application lies in older database systems.
	![[Databases_and_SQL.svg]]

2. **Network Data Model:** This Model shares similarities with the hierarchical approach, permitting records to hold multiple parent-child relationships. It adopts a structure akin to a graph, offering more flexibility compared to the hierarchical model.
	![[Pasted image 20240526225234.png]]

3. **Relational Data Model:** Organizing data into tables(known as relations) consisting of rows and columns characterizes the relational model. It stands as the most prevalent data model, rooted in the principles of set theory, and relies on Structured Query Language (SQL) for data manipulation.
	![[Pasted image 20240526225652.jpg]]

4. **Entity-Relationship Model(ER Model):** This model is utilized for crafting relational databases, the ER model represents data through entities (objects), attributes(entity properties), and relationships connecting these entities.
	![[Pasted image 20240526230417.png]]![[Introduction-to-ER-Model-2-768 1.webp]]

5. **Object-Oriented Data Model:** Extending the principles of object-oriented programming into the database domain, this model depicts data as objects complete with attributes and methods, fostering support for inheritance and encapsulation.
6. **NoSQL Data Model:** NoSQL databases encompass a diverse array of data models, such as **document-oriented** (e.g. MongoDB), **Key-Value** (e.g. Redis), **column-family** (e.g. Cassandra) and **graph**(e.g. Neo4j). These models are designed to offer scalability and flexibility when handling extensive volumes of unstructured or semi-structured data.