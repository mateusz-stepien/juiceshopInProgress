package pl.sokitloczone.juiceshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "/login";
    }

    @RequestMapping(value = {"/403"}, method = RequestMethod.GET)
    public String error() {
        return "/403";
    }

}
