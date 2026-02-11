# secureapp (Lab7 implementation)

This project is a minimal Spring Boot application implementing the Lab7 PDF example: user registration, login, and a protected `/greet` endpoint using Spring Security and Thymeleaf.

Quick run (requires Java 21 and Maven):

```bash
mvn clean package
java -jar target/secureapp-0.0.1-SNAPSHOT.jar
```

Templates: `register.html`, `login.html`, `greet.html` under `src/main/resources/templates`.
# lab-78