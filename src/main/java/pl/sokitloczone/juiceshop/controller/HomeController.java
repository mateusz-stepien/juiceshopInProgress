package pl.sokitloczone.juiceshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.sokitloczone.juiceshop.product.ProductService;
import pl.sokitloczone.juiceshop.user.User;

@Controller
public class HomeController {

    private ProductService productService;

    @Autowired
    public HomeController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/")
    public String home(Model model){
        model.addAttribute("products", productService.findAllProducts());
        return "home";
    }

    @RequestMapping("/adminPanel")
    public String adminPanel(){
        return "adminPanel";
    }

    @GetMapping(path = "/register")
    public String createUser(Model model){
        model.addAttribute("user", new User());
        return "userForm";
    }

}