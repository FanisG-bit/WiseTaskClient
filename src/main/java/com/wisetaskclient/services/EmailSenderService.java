package com.wisetaskclient.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * A service class responsible for sending an email.
 * @author Theofanis Gkoufas
 *
 */
@Service
@Scope("prototype")
@Data
@NoArgsConstructor
public class EmailSenderService {

	@Autowired
	private JavaMailSender javaMailSender;
	
	/**
	 * Given the appropriate information, an email is being sent.
	 * @param to The address that we want to send an email to.
	 * @param subject The title of the email.
	 * @param text The content of the email.
	 */
	public void sendEmail(String to, String subject, String text) {
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setFrom("wisetask@outlook.com");
		mail.setTo(to);
		mail.setSubject(subject);
		mail.setText(text);
		javaMailSender.send(mail);
	}
	
}
