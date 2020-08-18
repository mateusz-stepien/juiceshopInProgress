package pl.sokitloczone.juiceshop.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sokitloczone.juiceshop.box.BoxService;
import pl.sokitloczone.juiceshop.emailNotifications.MailService;
import pl.sokitloczone.juiceshop.product.ProductService;
import pl.sokitloczone.juiceshop.user.CurrentUser;
import pl.sokitloczone.juiceshop.user.UserService;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/newOrder")
public class NewOrderController {

    private OrderService orderService;
    private ProductService productService;
    private UserService userService;
    private BoxService boxService;
    private MailService mailService;

    @Autowired
    public NewOrderController(OrderService orderService, ProductService productService, UserService userService, BoxService boxService,
                              MailService mailService) {
        this.productService = productService;
        this.orderService = orderService;
        this.userService = userService;
        this.boxService = boxService;
        this.mailService = mailService;

    }

    @GetMapping("/addProduct/{id}")
    public String addProductToOrder(@PathVariable("id") Long id, @AuthenticationPrincipal CurrentUser customUser, HttpSession session){
        Order newOrder = orderService.addProductToOrder(productService.findProductById(id), userService.findByUserName(customUser.getUsername()), session);
        session.setAttribute("order", newOrder);
        return "redirect:/newOrder";
    }

    @GetMapping
    public String showOrder(Model model){
        model.addAttribute("products", productService.findAllProducts());
        model.addAttribute("boxes",boxService.findAllBox());
        return "newOrder";
    }

    @GetMapping("/save")
    public String saveOrder(HttpSession session) throws MessagingException {
        Order order = (Order) session.getAttribute("order");
        orderService.saveOrder(order);
        mailService.sendMail("mail@mateuszstepien.pl","Zarejestrowano nowe zamówianie", "Sklep sokitloczone.pl zarejestrował nowe zamówienia", true);
        session.removeAttribute("order");

        return "redirect:/";
    }

    @GetMapping(path = "/{id}")
    public String findAllProductsByBoxId(@PathVariable("id") Long id, Model model) {
        model.addAttribute("products", productService.findAllProductsByBoxId(id));
        return "newOrder";
    }

    @GetMapping(path = "/myOrders")
    public String findOrderByUserId(Model model, @AuthenticationPrincipal CurrentUser customUser){
        model.addAttribute("orders", orderService.findAllUserOrders(customUser.getUser().getId()));
        return "myOrders";
    }





}
