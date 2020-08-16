package pl.sokitloczone.juiceshop.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminPanel/orders")
public class OrderController {

    private OrderService orderService;

    @Autowired
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping
    public String findAllOrders(Model model){
        model.addAttribute("orders", orderService.findAllOrders());
        return "adminPanelOrders";
    }

    @GetMapping(path = "/details/{id}")
    public String showOrder(@PathVariable("id") Long id, Model model){
        model.addAttribute("productList", orderService.findOrderDetailsById(id));
        return "orderDetails";
    }

}
