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

Added column

```bash
ALTER TABLE `sys_users` ADD `cache_version` VARCHAR(20) NULL DEFAULT NULL AFTER `active`;
```

Install dependencies and build project

```bash
mvn install
```

Development run

```bash
mvn spring-boot:run -Dspring.config.location=classpath:<application-config-name>.properties
```

Serve your API

```bash
java -jar target/v8web-*.jar
 ```
Now, request http://localhost:8080 from browser.


# On Test Database

Updated Data : Blue Verifik8 database

```sql
INSERT INTO `cl_ref_products` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_PRODUCTS_TYPE_ID`, `CL_RECOMMAND_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(6, 1, 'FERT', 1, 'Fertilizers', 'Fertilizers', 'Fertilizers', 'Fertilizers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 2, 1, NULL, '2018-08-28 07:34:56', '2018-08-28 07:34:56'),
(7, 1, 'LIME', 1, 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 100, 2, 1, NULL, '2018-08-28 07:43:35', '2018-08-28 07:43:35'),
(8, 1, 'ADDI', 1, 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 'Additives', 20, 2, 1, NULL, '2018-08-28 07:43:35', '2018-08-28 07:43:35');
```

```sql
INSERT INTO `jt_pond_activity_product_types` (`CL_FARM_POND_ACTIVITY_ID`, `CL_PRODUCT_TYPE_ID`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(6, 100, 'Lime use', 1, NULL, '2018-08-28 07:49:32', '2018-08-28 07:49:32'),
(9, 50, 'Fertilizer use', 3, NULL, '2018-02-22 13:41:38', '2018-02-22 13:41:38');
```


Updated Data : Green Verifik8 database

```sql
INSERT INTO `cl_ref_product_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `CL_RECOMAND_QUANTITY_UNIT_ID`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `PARENT_CODE`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(101, 1, 'INSECT', 1, 'Insecticide', 'Insecticide', NULL, 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', NULL, 1, NULL, '2018-08-28 07:58:49', '2018-08-28 07:58:49'),
(102, 1, 'SOWI', 1, 'Sowing', 'Sowing', NULL, 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', NULL, 1, NULL, '2018-08-28 07:59:56', '2018-08-28 07:59:56');
```

```sql
INSERT INTO `cl_ref_products` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_PRODUCTS_TYPE_ID`, `CL_RECOMMAND_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(51, 1, 'INSECT', 1, 'Insecticide', 'Insecticide', 'Insecticide', 'Insecticide', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, 2, 1, NULL, '2018-08-28 08:05:59', '2018-08-28 08:05:59'),
(52, 1, 'SOWI', 1, 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Sowing', NULL, NULL, NULL, 102, 2, 1, NULL, '2018-08-28 08:05:59', '2018-08-28 08:05:59');
```

```sql
INSERT INTO `jt_plot_activity_product_types` (`CL_FARM_PLOT_ACTIVITY_ID`, `CL_PRODUCT_TYPE_ID`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 102, 'Sowing use', 1, NULL, '2018-08-28 08:00:27', '2018-08-28 08:00:27'),
(7, 101, 'Insecticide use', 1, NULL, '2018-08-28 08:00:56', '2018-08-28 08:00:56');
```

### RUN API in postman ###

Api login endpoint

```bash
https://blueapp.vfk8.united-asian.net/blue/oauth/token
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
