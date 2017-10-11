package mail;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.mail.MailMessage;

import mail.Mail;

public class Checkmail {
	public static String email;
	public static String rcvotp;
	
	public static void sendmail()
	{
		
		Resource r=new ClassPathResource("application.xml");  
		BeanFactory b=new XmlBeanFactory(r); 
		
		Mail m=(Mail)b.getBean("mail");  
		String sender="homejeet.b@gmail.com";//write here sender gmail id  
		String receiver=email;//write here receiver id
		String sub="IPPS.com Aadhar verification code";
		String msg=rcvotp;
		m.sendMail(sender,receiver,sub,msg); 
		
		System.out.println("success mail...");
		
		
		
		
	}
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
     sendmail();
	
	}
	}
