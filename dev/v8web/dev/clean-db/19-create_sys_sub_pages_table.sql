CREATE TABLE `sys_sub_pages` (
  `ID` int(11) NOT NULL COMMENT 'list of system sub pages (content within a page)',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `SYS_PAGE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of system sub pages (to manage restriction in page within div or for CL management)';

ALTER TABLE `sys_sub_pages`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_SYS_SUB_PAGES` (`CODE`),
  ADD KEY `FK_SYS_SUB_PAGE_PAGE_ID_idx` (`SYS_PAGE_ID`),
  ADD KEY `FK_SYS_SUB_PAGE_UPDATER_ID_idx` (`UPDATER_ID`);

ALTER TABLE `sys_sub_pages` MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'list of system sub pages (content within a page)', AUTO_INCREMENT=40;

ALTER TABLE `sys_sub_pages`
  ADD CONSTRAINT `FK_SYS_SUB_PAGE_PAGE_ID` FOREIGN KEY (`SYS_PAGE_ID`) REFERENCES `sys_pages` (`ID`),
  ADD CONSTRAINT `FK_SYS_SUB_PAGE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`);