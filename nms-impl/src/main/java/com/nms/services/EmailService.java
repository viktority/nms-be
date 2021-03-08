package com.nms.services;

import com.nms.models.EmailDto;
import com.nms.repositories.EmailRepository;
import com.nms.rest.server.configuration.EmailConfig;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.time.LocalDateTime;
import java.util.Properties;

@Service
public class EmailService {

    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    @Autowired
    EmailConfig emailConfig;

    @Autowired
    EmailRepository emailRepository;

    private static final Logger log = LoggerFactory.getLogger(EmailService.class);

    public boolean sendEmailAndPersist(EmailDto body) {
        boolean b = sendMail(body);

        if (b) {
            log.debug("Mail Sent");
            com.nms.entities.Email map = mapper.map(body, com.nms.entities.Email.class);
            map.setSentAt(LocalDateTime.now());
            map.setReceiverEmail(body.getEmailAddress());
            map.setSenderEmail(user.getUser() == null ? null : user.getUser().getAppUserEmail());
            emailRepository.save(map);
        }
        return b;
    }


    private boolean sendMail(EmailDto feedback) {
        Properties props = emailConfig.getProperties();
        try {
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug((Boolean.getBoolean((String) props.getOrDefault("mail.smtp.debug", false))));

            //Construct the mail message
            MimeMessage message = new MimeMessage(session);
            message.setText(feedback.getBody());
            message.setSubject(feedback.getSubject());
            String name = user.getUser() == null ? "Number Management System" : user.getUser().getAppUserEmail();
            message.setFrom(new InternetAddress(emailConfig.getUsername(), name));
            message.addRecipient(MimeMessage.RecipientType.TO, new InternetAddress(feedback.getEmailAddress()));
            message.saveChanges();

            //Use Transport to deliver the message
            Transport transport = session.getTransport((String) props.getOrDefault("mail.smtp.protocol", "smtp"));

            transport.connect(emailConfig.getHost(), emailConfig.getUsername(), emailConfig.getPassword());
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            return true;
        } catch (MailException | MessagingException | UnsupportedEncodingException ex) {
            log.error(ex.getLocalizedMessage());
            return false;
        }
    }
}
