ALTER TABLE cl_app_declaration_sources_types ADD RANKING int(6) NULL;
ALTER TABLE cl_app_declaration_sources_types MODIFY COLUMN RANKING int(6) AFTER CODE;