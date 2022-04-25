package com.wisetaskclient.services;

import java.util.TimerTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import com.wisetaskclient.entities.Task;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Component
@Scope("prototype")
@Setter
@Getter
@NoArgsConstructor
public class ScheduledEmailTask extends TimerTask {
	
	@Autowired
	EmailSenderService emailSender;
	
	private Task emailContent;
	
	private final String EMAIL_SUBJECT = "Daily WiseTask's Reminder";

	@Override
	public void run() {
		 emailSender.sendEmail(emailContent.getEmailAddressToSend(),
				 EMAIL_SUBJECT,
				 emailContent.getTaskDescription());
	}

}
