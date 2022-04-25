package com.wisetaskclient.services;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.wisetaskclient.entities.Task;
import com.wisetaskclient.entities.Tasks;
import lombok.NoArgsConstructor;

@Service
@NoArgsConstructor
public class EmailCheckerTask extends TimerTask {
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	ApplicationContext context;
	
	@Autowired
	private Timer timer;
	
	@Override
	public void run() {
		Tasks tasks = restTemplate.getForObject("http://localhost:8028/users/getEmailsThatNeedsToBeSentToday",
				Tasks.class);
		List<Task> todaysTasks = tasks.getTasks();
		if(todaysTasks != null) {
			for(Task task : todaysTasks) {
				/*	If a task that is being checked has a time that is in the past,
					then it shouldn't be sent (obviously).
					Because based on documentation if we schedule a task and its time
					to execute is in the past, then it is scheduled for immediate 
					execution. We do not want that!
				*/
				LocalTime taskTime = LocalTime.parse(task.getTimeToSendEmail());
				if(taskTime.compareTo(LocalTime.now()) < 0) {
					continue;
				} 
				String[] timeToSend = task.getTimeToSendEmail().split(":");
				LocalDate today = LocalDate.now();
				Calendar cal = Calendar.getInstance();
				cal.set(Calendar.HOUR_OF_DAY, Integer.parseInt(timeToSend[0]));
				cal.set(Calendar.MINUTE, Integer.parseInt(timeToSend[1]));
				cal.set(Calendar.SECOND, 0);
				// Calendar's return month starts from 0, that's why we have to decrease by one.
				int todaysMonth = today.getMonthValue();
				todaysMonth--;
				cal.set(today.getYear(), todaysMonth, today.getDayOfMonth());
				Date dateToSend = cal.getTime();
				ScheduledEmailTask emailTask = context.getBean(ScheduledEmailTask.class);
				emailTask.setEmailContent(task);
				timer.schedule(emailTask, dateToSend);
			}
		}
	}

}
