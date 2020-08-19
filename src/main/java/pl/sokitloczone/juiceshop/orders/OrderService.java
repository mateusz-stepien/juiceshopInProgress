package pl.sokitloczone.juiceshop.orders;

import org.springframework.stereotype.Service;
import pl.sokitloczone.juiceshop.product.Product;
import pl.sokitloczone.juiceshop.user.User;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.ArrayList;
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
        Long totalOrder;
        if(session.getAttribute("order") == null){
            order.setUser(user);
            order.setTotalOrder(product.getPrice());
        } else {
            order = (Order) session.getAttribute("order");
            totalOrder = order.getTotalOrder();
            order.setTotalOrder(totalOrder+product.getPrice());
        }
        order.getProductList().add(product);
        return order;
    }

    public void saveOrder(Order order){
        order.setCreated();
        orderRepository.save(order);
    }

    public List<Order> findAllUserOrders(Long id) {
        return orderRepository.findAllByUserId(id);
    }

    public Order deleteProductFromOrder(Product product, HttpSession session){
        Order order = new Order();
        int toDelete = 0;
        Long searchedProduct = product.getId();
        if(session.getAttribute("order") != null){
            order = (Order) session.getAttribute("order");
            List<Product> orderList = order.getProductList();
            int counter = 0;
            for (Product eachProduct: orderList
                 ) {
                counter = counter + 1;
                if (eachProduct.getId() == searchedProduct){
                    toDelete = counter-1;
                }
            }
        }

        order.getProductList().remove(toDelete);
        return order;
    }


}
