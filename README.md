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
cd backend/dev/v8web/
```

Database configuration

MySQL

```bash
root:<see this in DEMO_SERVERS.txt file>
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

### RUN API in postman ###

Api login endpoint

```bash
https://api2.vfk8.united-asian.net/api/oauth/token
```
step1: 
On Authorization(Basic Auth) enter ->
username: verifik8-client
password: verifik8-secret

step2: 
- on body click x-www-form-urlencoded and enter value ->
username: [any username from database]
password: []
grant_type: password

step3:
click on send to get refresh and access token
