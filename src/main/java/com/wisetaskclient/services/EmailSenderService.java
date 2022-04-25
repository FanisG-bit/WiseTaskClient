package com.wisetaskclient.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import lombok.Data;
import lombok.NoArgsConstructor;

@Service
@Scope("prototype")
@Data
@NoArgsConstructor
public class EmailSenderService {

	@Autowired
	private JavaMailSender javaMailSender;
	
	public void sendEmail(String to, String subject, String text) {
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setFrom("wisetask@outlook.com");
		mail.setTo(to);
		mail.setSubject(subject);
		mail.setText(text);
		javaMailSender.send(mail);
	}
	
}
