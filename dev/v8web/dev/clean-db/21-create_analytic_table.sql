CREATE TABLE `sys_stat_activities`
(
  `ID`           int(11)                        NOT NULL AUTO_INCREMENT,
  `ENABLED`      tinyint(1)                     NOT NULL                    DEFAULT '1',
  `CODE`         varchar(45) COLLATE utf8_bin                               DEFAULT NULL,
  `RANKING`      int(6)                         NOT NULL                    DEFAULT '1',
  `NAME`         varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION`  varchar(512) CHARACTER SET utf8                            DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin  NOT NULL COMMENT 'default label',
  `I18N_EN`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in English',
  `I18N_FR`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in French',
  `I18N_ES`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT`      varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH`      varchar(256) COLLATE utf8_bin                              DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID`   int(11)                        NOT NULL                    DEFAULT '0',
  `COMMENT`      varchar(1024) CHARACTER SET utf8                           DEFAULT NULL,
  `CREATED_AT`   timestamp                      NOT NULL                    DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT`   timestamp                      NOT NULL                    DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin;

CREATE TABLE `sys_users_stats`
(
  `ID`              int(11)   NOT NULL AUTO_INCREMENT,
  `SYS_USER_ID`     int(11)   NOT NULL,
  `CONNECTION_TIME` timestamp NOT NULL,
  `UPDATER_ID`      int(11)   NOT NULL             DEFAULT '0',
  `COMMENT`         varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT`      timestamp NOT NULL             DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT`      timestamp NOT NULL             DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin;

CREATE TABLE `sys_users_stats_activity`
(
  `ID`              int(11)   NOT NULL AUTO_INCREMENT,
  `SYS_USER_ID`     int(11)   NOT NULL,
  `ID_ADDRESS`      varchar(45) COLLATE utf8_bin   DEFAULT NULL,
  `DT_FARM_PLOT_ACTIVITY_ID` int(11),
  `DT_FARM_POND_ACTIVITY_ID` int(11),
  `ACTIVITY_DATE`   timestamp NOT NULL,
  `UPDATER_ID`      int(11)   NOT NULL             DEFAULT '0',
  `COMMENT`         varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT`      timestamp NOT NULL             DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT`      timestamp NOT NULL             DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin;


INSERT INTO sys_pages (ID, ENABLED, CODE, RANKING, NAME, SYS_PAGE_DOMAIN_ID, DESCRIPTION, I18n_DEFAULT, I18N_EN, I18N_FR, I18N_ES, I18N_TH, I18N_VT, I18N_LA, I18N_ID, I18N_KH, UPDATER_ID, COMMENT, CREATED_AT, UPDATED_AT)
VALUES (43, 1, 'FAMEBROWSER', 43, 'Admin fame browser', 7, 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 'Admin fame browser', 3, null, '2018-10-18 12:41:20', '2018-10-18 12:41:20');


INSERT INTO sys_users_rights (ID, ENABLED, SYS_ROLE_ID, SYS_PAGE_ID, SYS_RIGHT_ID, NAME, DESCRIPTION, UPDATER_ID, COMMENT, CREATED_AT, UPDATED_AT)
VALUES (232, 1, 1, 43, 1, 'Super Admin - Admin fame browser', 'Management of fame page browser by admin', 3, null, '2018-10-18 12:45:23', '2018-10-18 12:45:23');