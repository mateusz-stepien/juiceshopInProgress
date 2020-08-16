package pl.sokitloczone.juiceshop.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/adminPanel/users")
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String findAllUsers(Model model) {
        model.addAttribute("users", userService.findAllUsers());
        return "adminPanelUsers";
    }

    @GetMapping(path = "/add")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "userForm";
    }

    @PostMapping(path = "/save")
    public String updateUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/adminPanel/users";
    }

    @GetMapping(path = "/edit/{id}")
    public String editUser(@PathVariable("id") Long id, Model model) {
        model.addAttribute("user", userService.findUserById(id));
        return "userForm";
    }

    @GetMapping(path = "/delete/{id}")
    public String deleteUser(@ModelAttribute User user) {
        userService.deleteUser(user);
        return "redirect:/adminPanel/users";

    }
}
