package pl.sokitloczone.juiceshop.emailNotifications;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;

@RestController
public class MailApi {

    private MailService mailService;

    @Autowired
    public MailApi(MailService mailService) {
        this.mailService = mailService;
    }

    //NOTIFICATION TEST
    @GetMapping("/sendMail")
    public String sendMail() throws MessagingException {
        mailService.sendMail("stepien.mateusz.91@gmail.com",
                "Wygrałeś",
                "<b>1000 000 zł</b><br>:P", true);
        return "wysłano";
    }
}