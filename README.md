# 🚀 Spring Boot MVC Employee Management System

## 📌 Project Overview
The Employee Management System is a web-based application developed using **Spring Boot MVC architecture**.  
It is designed to manage employee records efficiently with features like CRUD operations, Soft Delete, Pagination, and Time-based request validation using Spring Interceptors.

The application uses **JSP for the view layer**, **Spring Data JPA with Hibernate** for database operations, and supports **both MySQL and Oracle databases**.  
The project is deployed using **Apache Tomcat (External Server)**.

---

## 🛠 Tech Stack

### Backend
- Java 21
- Spring Boot 3
- Spring MVC
- Spring Data JPA
- Hibernate ORM

### Frontend
- JSP
- JSTL (Jakarta)
- HTML / CSS / Bootstrap

### Database
- MySQL 8
- Oracle 19c (Supported)

### Server
- Apache Tomcat 10/11 (External Deployment)

### Build Tool
- Maven

---

## ✨ Features

✅ Employee CRUD Operations  
✅ Soft Delete using Hibernate (`@SQLDelete`, `@Where`)  
✅ Pagination using Spring Data JPA (`Pageable`)  
✅ Time-Based Access Control using Spring Interceptor  
✅ JSP + JSTL Dynamic UI Rendering  
✅ Multi Database Support (MySQL + Oracle)  
✅ Exception Handling with Custom Error Pages  

---

## 🧠 Advanced Concepts Used

- Hibernate Soft Delete Implementation  
- Spring MVC Handler Interceptors  
- WAR Deployment in External Tomcat  
- Jakarta EE Migration (Servlet 6, JSTL Jakarta)  
- Layered Architecture (Controller → Service → Repository → Entity)

---


## 📂 Project Structure
src/main/java
├── controller
├── service
├── repository
├── entity
├── interceptor
└── config

src/main/webapp
├── WEB-INF
│ ├── pages
│ └── error



---

## ⚙️ Configuration

### MySQL Configuration

spring.datasource.url=jdbc:mysql://localhost:3306/your_db
spring.datasource.username=root
spring.datasource.password=root


### Oracle Configuration

spring.datasource.url=jdbc:oracle:thin:@localhost:1521:orcl
spring.datasource.username=system
spring.datasource.password=oracle


---

## ▶️ How To Run

### Step 1
Clone Repository


### Step 2
Import Project in Eclipse / IntelliJ

### Step 3
Update Maven Dependencies

### Step 4
Deploy WAR File to Apache Tomcat Server

### Step 5
Run Server and Access:


---

## 📸 Screenshots
<img width="1840" height="945" alt="Screenshot 2026-02-05 235234" src="https://github.com/user-attachments/assets/e67ddd8e-b150-462f-b5c3-c4669a9f2a38" />

<img width="1786" height="940" alt="Screenshot 2026-02-05 235248" src="https://github.com/user-attachments/assets/8a7feacf-dd82-45ed-ac85-457224e2f96d" />



---

## 📈 Future Improvements
- REST API Version
- Spring Security Integration
- Role-Based Access
- Docker Deployment
- Cloud Deployment (AWS)

---

## 👨‍💻 Author
**Amit Avhad**

---

## 📜 License
This project is for learning and demonstration purposes.






## 📂 Project Structure

