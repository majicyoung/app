# README #

This README would normally document whatever steps are necessary to get your application up and running.

### Verifik8 api ###

Verifik8 upgrade to bonsucro standard

### Software ###

- Java
- Maven

### Installation ###

First clone the repository

```bash
git@gitlab.united-asian.com:verifik8/backend.git
```
Change the directory into your project folder

```bash
cd cd backend/dev/v8web/
```

Database configuration

```bash
MySQL
root  verifik8-isA-Go0dSoftWAr3
```

Install dependencies and build project

```bash
mvn install
```

Development run

```bash
mvn spring-boot:run
```

Serve your API

```bash
java -jar target/v8web-*.jar
 ```
Now, request http://localhost:8080 from browser.
