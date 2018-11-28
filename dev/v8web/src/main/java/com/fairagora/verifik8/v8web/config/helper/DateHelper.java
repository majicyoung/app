package com.fairagora.verifik8.v8web.config.helper;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateHelper {


	public static String DateToSQLDateString(Date date){
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(date);
	}


	public static Date getCurrentDate(){
		return new Date();
	}

	public static Date getLastMonthDate(){
		Date dt = new Date();
		Calendar c = Calendar.getInstance();
		c.setTime(dt);
		c.add(Calendar.DATE, - 1);
		dt = c.getTime();
		return dt;
	}
}
