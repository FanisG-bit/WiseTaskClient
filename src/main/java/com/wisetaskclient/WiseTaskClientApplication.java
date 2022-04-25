package com.wisetaskclient;

import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import com.wisetaskclient.services.EmailCheckerTask;

@SpringBootApplication
public class WiseTaskClientApplication {

	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(WiseTaskClientApplication.class, args);
		EmailCheckerTask emailChecker = context.getBean(EmailCheckerTask.class);
		Timer everyDayTimer = context.getBean(Timer.class);
		LocalDate today = LocalDate.now();
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.AM_PM, Calendar.AM);
		int todaysMonth = today.getMonthValue();
		todaysMonth--;
		cal.set(today.getYear(), todaysMonth, today.getDayOfMonth());
		Date dateToSend = cal.getTime();
		/*
		 * The third argument indicates that this task will repeat after that number of
		 * milliseconds. The given number if converted to hours gives us 24. That means
		 * that I want this email checker to happen once a day at 12AM.
		 */
		try {
			everyDayTimer.schedule(emailChecker, dateToSend, 86400000);
		} catch(Exception exception) {
			/*
			 * When we shutdown the program, some exception is being raised that is related to
			 * the email that are being scheduled to be sent etc. I am catching it for the
			 * purpose of not crashing the program violently.
			 */
		}
	}

}
