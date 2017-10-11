package mail;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class Mail {
	
	private MailSender sender;
public void setMailSender(MailSender sender){
		
		this.sender=sender;
		
	}
 public void sendMail(String from,String to,String sub,String msg){
	 
	 SimpleMailMessage message=new SimpleMailMessage();
	 message.setFrom(from);
	 message.setTo(to);
	 message.setSubject(sub);
	 message.setText(msg);
	 
	 sender.send(message);
	 
 }
	
}
