package pl.sokitloczone.juiceshop.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.sokitloczone.juiceshop.user.CurrentUser;
import pl.sokitloczone.juiceshop.user.User;
import pl.sokitloczone.juiceshop.user.UserService;


@Controller
public class LoginController {

    private UserService userService;

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "/login";
    }

    @RequestMapping(value = {"/403"}, method = RequestMethod.GET)
    public String error() {
        return "/403";
    }


    //Dla testu -
    @GetMapping("/admin")
    //@ResponseBody
    public String admin(Model model, @AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        //return "Hello " + entityUser.getUsername();
        model.addAttribute("user", entityUser);
        return "userForm";
    }

}
