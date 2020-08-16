package pl.sokitloczone.juiceshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.sokitloczone.juiceshop.orders.OrderService;
import pl.sokitloczone.juiceshop.product.ProductService;
import pl.sokitloczone.juiceshop.user.User;
import pl.sokitloczone.juiceshop.user.UserService;

@Controller
public class HomeController {

    private ProductService productService;
    private UserService userService;
    private OrderService orderService;

    @Autowired
    public HomeController(ProductService productService, UserService userService, OrderService orderService) {
        this.productService = productService;
        this.userService = userService;
        this.orderService = orderService;
    }

    @RequestMapping("/")
    public String home(Model model){
        model.addAttribute("products", productService.findAllProducts());
        return "home";
    }

    @RequestMapping("/adminPanel")
    public String adminPanel(Model model){
        model.addAttribute("users", userService.findAllUsers());
        model.addAttribute("orders", orderService.findAllOrders());
        return "adminPanel";
    }



    @GetMapping(path = "/register")
    public String createUser(Model model){
        model.addAttribute("user", new User());
        return "userForm";
    }

}