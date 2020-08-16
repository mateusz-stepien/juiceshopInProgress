package pl.sokitloczone.juiceshop.orders;

import org.springframework.stereotype.Service;
import pl.sokitloczone.juiceshop.product.Product;
import pl.sokitloczone.juiceshop.user.User;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class OrderService {

    private OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {

        this.orderRepository = orderRepository;
    }

    public List<Order> findAllOrders() {
        return orderRepository.findAll();
    }

    public Order findOrderById(Long id) {
        return orderRepository.findById(id).get();
    }

    public List<Product> findOrderDetailsById(Long id) {
        return orderRepository.findById(id).get().getProductList();
    }

    public void deleteOrder(Order order) {
        orderRepository.delete(order);
    }

    public Order addProductToOrder(Product product, User user, HttpSession session){
        Order order = new Order();

        if(session.getAttribute("order") == null){
            order.setUser(user);
        } else {
            order = (Order) session.getAttribute("order");
        }
        order.getProductList().add(product);
        return order;
    }

    public void saveOrder(Order order){
        order.setCreated();
        orderRepository.save(order);
    }

}
