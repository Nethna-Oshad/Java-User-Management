# Java-User-Management
Online_Transport_System_Login_Registration in Java language 

Java User Management
This is a Java-based web application for an Online Transport System, providing user management features such as login, registration, profile management, and logout functionality. The application uses Java Servlets, JSP, and a MySQL database to manage user data.
Features

User Registration: Allows new users to create an account.
User Login: Authenticates users with email and password.
Profile Management: Users can view and delete their profiles.
Logout: Securely logs users out of the system.
Database Integration: Uses MySQL to store user information.

Technologies Used

Java: Servlets for backend logic.
JSP: For dynamic web pages.
MySQL: Database for storing user data.
JSTL: For JSP tag libraries.
Servlet Container: Compatible with Apache Tomcat.
MySQL Connector: For database connectivity.

Prerequisites

Java Development Kit (JDK) 8 or higher
Apache Tomcat 9 or higher
MySQL Server
Git (to clone the repository)
(Optional) Maven for dependency management

Setup Instructions

Clone the Repository:git clone https://github.com/Nethna-Oshad/Java-User-Management.git
cd Java-User-Management


Set Up the Database:
Create a MySQL database named login_registration.
Import the database schema from login_registration_DB.sql:mysql -u your_username -p login_registration < login_registration_DB.sql


Update the database connection details in src/main/java/com/example/dao/UserDAO.java (e.g., username, password, URL).


Add Dependencies:
Ensure the following libraries are in src/main/webapp/WEB-INF/lib/:
mysql-connector-java-8.0.11.jar
jstl-1.2.jar


Alternatively, use Maven by adding a pom.xml (see below) and running mvn install.


Deploy to Tomcat:
Copy the project to Tomcat’s webapps directory or deploy the WAR file.
Start Tomcat: catalina.sh run (or startup.bat on Windows).


Access the Application:
Open a browser and navigate to http://localhost:8080/Java-User-Management/login.jsp.



Project Structure
Java-User-Management/
├── login_registration_DB.sql        # Database schema
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── com/example/dao/     # Data Access Object (UserDAO.java)
│   │   │   ├── com/example/model/   # Model class (User.java)
│   │   │   ├── com/example/servlet/ # Servlets (LoginServlet, RegisterServlet, etc.)
│   │   ├── webapp/
│   │   │   ├── Home.jsp             # Home page
│   │   │   ├── login.jsp            # Login page
│   │   │   ├── profile.jsp          # User profile page
│   │   │   ├── register.jsp         # Registration page
│   │   │   ├── WEB-INF/
│   │   │   │   ├── web.xml          # Web deployment descriptor
│   │   │   │   ├── lib/             # JAR files (mysql-connector, jstl)
│   │   │   ├── META-INF/
│   │   │   │   ├── MANIFEST.MF
├── README.md                        # This file

Using Maven (Optional)
To manage dependencies, create a pom.xml in the project root:
<project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.example</groupId>
    <artifactId>Java-User-Management</artifactId>
    <version>1.0-SNAPSHOT</version>
    <dependencies>
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.11</version>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.2</version>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>javax.servlet-api</artifactId>
            <version>4.0.1</version>
            <scope>provided</scope>
        </dependency>
    </dependencies>
</project>

Run mvn clean install to download dependencies and build the project.
Running the Application

Start your MySQL server and ensure the database is set up.
Deploy the project to Tomcat.
Access:
Login: http://localhost:8080/Java-User-Management/login.jsp
Register: http://localhost:8080/Java-User-Management/register.jsp
Home: http://localhost:8080/Java-User-Management/Home.jsp
Profile: http://localhost:8080Pessoa-User-Management/profile.jsp



Troubleshooting

Database Connection Errors: Verify MySQL credentials and ensure the database is running.
404 Errors: Check that the project is correctly deployed in Tomcat and that web.xml mappings are correct.
Missing Dependencies: Ensure JARs or Maven dependencies are included.
Large File Issues: If JARs cause push issues, add /src/main/webapp/WEB-INF/lib/ to .gitignore and use Maven.

Contributing

Fork the repository.
Create a new branch: git checkout -b feature-branch.
Commit changes: git commit -m "Add feature".
Push to GitHub: git push origin feature-branch.
Create a pull request.

License
This project is licensed under the MIT License.
