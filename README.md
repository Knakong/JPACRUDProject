### JPACRUDProject : Bioluminescent Organisms

-Deployed Project Link:
http://35.83.15.242:8080/BioluminescentOrganism/

## Description
-As part of Skill Distillery's Full Stack programming with Java bootcamp, this week sprint introduced Jakarta Persistance Annotation API as well Spring Boot MVC. This project includes a fully functional web application that allows users to Create, Replace, Update, and Destroy entries of a database. The data I choose for my project on was a database featuring bioluminescent animals after crowd sourcing ideas at home. The database is one table that has 6 colums, id, name, scienitfic_name, img_url, location, and, description. Users can search by keyword or id to find a matching entry. From the a matching result, the information the column in displayed. At the bottom of the details page, the user can delete or update the entry. The user can also add a new organism to the database using the link in the nav menu. Additional on the homepage, a list of all entries is displayed, where the user can click the name of the organism and see the details page.


## Technologies Used
-Springs Tool Suite 4(Eclipse),Spring MVC, Atom, Java, HTML/CSS, BootStrap, mysql, JDBC, mysql Work Bench, Jakarta Persistance Annotations (JPA) API, Jakarta Persistance Query Language, Grade, MAMP, (JPQL), Hibernate API, Apache Tom Cat, AW2 EC2, Mariadb



## Methods

-This projected started with creating a single table database using MySql workbench after the understanding that a database is generated by a script you can write by hand using a text-editor.  I created my table with a few starter fields and some preliminary inserted rows to be able to create entities to test the connection with my db through JDBC, MAMP which hosted my db locally, and my POJO entities.

-JPQL, the sql language used in the JPA API allows us to search queries after annotation `@Entity` of the class to represent the single table in my db and also allows column annotation `@Column` to our class fields. I used the POJO class and field names to input CRUD statements and used J-unit test files to test my entities.

-After confirming the entities were working properly and showing the expected results to test queries. I started a new Spring Boot MVC project in Spring Tools Suite 4 loaded all the required dependencies and made used of Gradle's multiple project function to include packages from the non-Spring JPA-based project.

-I used a Database Accessor Object interface and an Implementation class of that interface to create the various CRUD methods. The methods were called in the Controller class where the Request mapping was also complete. I used POJOs and DAO to emulate separation of concerns to protect data, also taking into account potential sql injections risk.

-I created and did mapping for each method one at the time and also created accompanying .jsp files as necessary. Once the all functionality was complete. I did some basic styling using bootstrap to my make my web application look a bit more clean. The application is operational and deployed on AWS through Apache Tomcat, and Mariadb (sql server) installed on an EC2 instance.



## Learning Continued

-Taking things one step at time is a lot better for troubleshooting. The instructors drilled in our heads, the importance of unit testing and the amount of time, money, money, and and told us again, not to forget out money that can be saved from testing with anecdotal stories from their experience. Making sure the bottom of the stack is on the up and up will seriously save headaches.

-Using the viewResolver helps with shortening the return String for our views in the controller method. One thing I did came across while using suffix setting to include .jsp so we can omit it in method returns was to avoid naming RequestMapping and .jsp(s) with like names and use explicit naming conventions. At one point in the project I had an updateOrganism.jsp and an updateOrganism.do RequestMapping which did not work. It's obvious now but I did not know why it did not work at the time. Using tools like a viewResolver, it's important to know the complete function.

-Front-end design is quite tedious and it will takes quite some time to get the results I was envisioning. Having the patience and being able to find resources for edification is a step that cannot be missed. I'll have to continue learning more about the front-end and search for me tools and resources.
