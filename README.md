# Spring Boot Login and Register

This is a simple Spring Boot application that demonstrates the basic functionality for user registration and login using Spring Security and a MySQL database.

## Features

- **User Registration**: Users can sign up by providing a username, email, and password.
- **User Login**: Registered users can log in using their credentials.
- **Password Encryption**: Passwords are securely stored using BCrypt hashing.
- **Database Integration**: The app is connected to a MySQL database to store user details.
- **Spring Security**: Provides authentication and authorization for login and registration functionality.

## Prerequisites

- Java 17 (or later)
- MySQL
- Maven
- IDE (e.g., IntelliJ IDEA, Eclipse)

## Getting Started

Follow these steps to run the project locally:

### 1. Clone the Repository

Clone this repository to your local machine using:

```
git clone https://github.com/Anirudhmaurya1208/Springboot-Login-Register.git
```
2. Configure the Database
Create a MySQL database for the application.

```
CREATE DATABASE loginprac_db;
```
Update the application.properties file in the src/main/resources directory with your MySQL credentials:

properties
```
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/loginprac_db
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.database-platform=org.hibernate.dialect.MySQL8Dialect
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```
3. Build the Project
Navigate to the project folder in the terminal and run the following Maven command to build the project:

```
mvn clean install
```
4. Run the Application
Run the application using the following Maven command:
```

mvn spring-boot:run
```
Alternatively, you can run the application from your IDE by executing the LoginRegisterApplication class.

5. Access the Application
Once the application starts, you can access it through the following URL:
```

http://localhost:8080/
```
Endpoints
GET /register - Displays the user registration page.

POST /register - Submits the registration form and saves the user to the database.

GET /login - Displays the login page.

POST /login - Handles user login and redirects accordingly.

Technologies Used
Spring Boot: Framework to build the application.

Spring Security: Provides authentication and authorization.

JSP: For rendering views.

MySQL: Relational database to store user information.

Hibernate/JPA: For ORM mapping and database operations.

BCrypt: For encrypting user passwords.

Example Database Schema
Below is the schema for the users table in MySQL:

```
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
```
Troubleshooting
Error: ClassNotFoundException: org.apache.jsp.views.Register_jsp
Make sure that the required JSP files are placed in the src/main/webapp/WEB-INF/views/ folder.

If you are using Tomcat 10 and Spring Boot 3.x, ensure you have added the necessary JSP dependencies in your pom.xml.

Error: fatal: refusing to merge unrelated histories
Use the following command to pull changes from the remote repository:

```
git pull origin main --allow-unrelated-histories
```
License
This project is licensed under the MIT License - see the LICENSE file for details.



### Notes:
- **Application Structure**: The README assumes you are using standard Spring Boot practices (e.g., controller classes, views in `WEB-INF/views`, etc.).
- **Customizing**: Feel free to customize the endpoints or database schema to match your project structure.
- **MySQL**: Make sure you have the `mysql-connector-java` dependency in your `pom.xml` file if you're using MySQL.

Let me know if you need further adjustments or additions!
