package pl.sokitloczone.juiceshop.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sokitloczone.juiceshop.product.ProductService;
import pl.sokitloczone.juiceshop.user.UserService;

import javax.servlet.http.HttpSession;
import java.security.Principal;


@Controller
@RequestMapping("/newOrder")
public class NewOrderController {

    private OrderService orderService;
    private ProductService productService;
    private UserService userService;

    @Autowired
    public NewOrderController(OrderService orderService, ProductService productService, UserService userService) {
        this.productService = productService;
        this.orderService = orderService;
        this.userService = userService;

    }


    @GetMapping("/addProduct/{id}")
    public String addProductToOrder(@PathVariable("id") Long id, HttpSession session){
        Order newOrder = orderService.addProductToOrder(productService.findProductById(id), userService.findByUserName("admin"), session);
        session.setAttribute("order", newOrder);
        return "redirect:/newOrder";
    }

    @GetMapping
    public String showOrder(Model model){
        model.addAttribute("products", productService.findAllProducts());
        return "newOrder";
    }

    @GetMapping("/save")
    public String saveOrder(HttpSession session){
        Order order = (Order) session.getAttribute("order");
        orderService.saveOrder(order);
        session.removeAttribute("order");
        return "redirect:/";
    }





}
