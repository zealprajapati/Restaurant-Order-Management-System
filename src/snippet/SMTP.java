package snippet;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class SMTP {
	public void sendMail(String email, int otp) 
	{
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		  // Get a Properties object
		     Properties props = System.getProperties();
		     props.setProperty("mail.smtp.host", "smtp.gmail.com");
		     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		     props.setProperty("mail.smtp.socketFactory.fallback", "false");
		     props.setProperty("mail.smtp.port", "465");
		     props.setProperty("mail.smtp.socketFactory.port", "465");
		     props.put("mail.smtp.auth", "true");
		     props.put("mail.debug", "true");
		     props.put("mail.store.protocol", "pop3");
		     props.put("mail.transport.protocol", "smtp");
		     final String username = "";//
		     final String password = "";
		     try{
		     Session session = Session.getDefaultInstance(props, 
		                          new Authenticator(){
		                             protected PasswordAuthentication getPasswordAuthentication() {
		                                return new PasswordAuthentication(username, password);
		                             }});

		     Message msg = new MimeMessage(session);
		     msg.setFrom(new InternetAddress(""));
		     msg.setRecipients(Message.RecipientType.TO, 
		                      InternetAddress.parse(email,false));
		     msg.setSubject("OTP");
		     msg.setText("Your OTP  "+otp);
		     
		     msg.setSentDate(new Date());
		     Transport.send(msg);
		     System.out.println("Message sent.");
		  }catch (MessagingException e){ System.out.println(e);}
		 
	}

	public int generateOTP(int limit) {
		int otp = 0;
		if (limit > 5 || limit < 1)
			limit = 3;
		for (int i = 0; i < limit; i++) {
			int x = new Random().nextInt(9);
			if (x == 0 && i == 0) {
				i--;
			} else {
				otp = (otp * 10) + x;
			}
		}
		return otp;
	}
}