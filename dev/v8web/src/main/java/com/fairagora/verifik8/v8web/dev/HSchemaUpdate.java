package com.fairagora.verifik8.v8web.dev;

import java.io.IOException;
import java.sql.SQLException;

import javax.persistence.Entity;

import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.spi.MetadataImplementor;
import org.hibernate.dialect.MySQLDialect;
import org.hibernate.tool.hbm2ddl.SchemaUpdate;

import com.google.common.collect.ImmutableSet;
import com.google.common.reflect.ClassPath;
import com.google.common.reflect.ClassPath.ClassInfo;

public class HSchemaUpdate {
	
	private static final String DB_PASSWORD = "";
	private static final String DB_USER = "root";
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost:3306/blueverifik8";

	public static void main(String[] args) throws IOException, SQLException {

		MetadataSources metadata = new MetadataSources(new StandardServiceRegistryBuilder()
				.applySetting("hibernate.connection.driver_class", JDBC_DRIVER)
				.applySetting("hibernate.naming_strategy", "org.hibernate.cfg.EJB3NamingStrategy")
				.applySetting("hibernate.dialect", MySQLDialect.class.getName())
				.applySetting("hibernate.connection.url", DB_URL).applySetting("hibernate.connection.username", DB_USER)
				.applySetting("hibernate.connection.password", DB_PASSWORD).build());

		ImmutableSet<ClassInfo> l_classes = ClassPath.from(HSchemaUpdate.class.getClassLoader()).getAllClasses();
		l_classes.forEach(t -> {
			if (t.getName().startsWith("com.fairagora.verifik8.v8web.data"))
				try {
					Class<?> clazz = Class.forName(t.getName());
					if (clazz.getAnnotation(Entity.class) != null) {
						metadata.addAnnotatedClass(clazz);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
		});

		SchemaUpdate l_updator = new SchemaUpdate((MetadataImplementor) metadata.buildMetadata());
		l_updator.setOutputFile("db.out");
		l_updator.execute(true, false);

		System.exit(0);
	}

}
