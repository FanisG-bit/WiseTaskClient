package com.wisetaskclient.services;

import java.util.TimerTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import com.wisetaskclient.entities.Task;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * A class that conceptually represents an email that is scheduled to be sent.
 * Basically, instances of this class are scheduled to be sent at a specific 
 * date/time. When it is time, the run method executes and sends the email.
 * @author Theofanis Gkoufas
 *
 */
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
