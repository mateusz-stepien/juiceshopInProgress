package pl.sokitloczone.juiceshop.orders;

import pl.sokitloczone.juiceshop.product.Product;
import pl.sokitloczone.juiceshop.user.User;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity

@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime created;

    @ManyToOne
    private User user;

    /**PAYPAL order_status
     * order_status enum
     * The order status. The possible values are:
     * CREATED. The order was created with the specified context.
     * SAVED. The order was saved and persisted. The order status continues to be in progress until a capture is made with final_capture = true for all purchase units within the order.
     * APPROVED. The customer approved the payment through the PayPal wallet or another form of guest or unbranded payment. For example, a card, bank account, or so on.
     * VOIDED. All purchase units in the order are voided.
     * COMPLETED. The payment was authorized or the authorized payment was captured for the order.
     */
    private String status = "CREATED";

    @ManyToMany
    @JoinTable(name = "order_product",
            joinColumns = @JoinColumn(name = "order_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    private List<Product> productList = new ArrayList<>();

    private Long totalOrder;

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", created=" + created +
                ", user=" + user +
                ", status='" + status + '\'' +
                ", productList=" + productList +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated() {
        this.created = LocalDateTime.now() ;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String orderStatus) {
        this.status = status;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public Long getTotalOrder() {
        return totalOrder;
    }

    public void setTotalOrder(Long totalOrder) {
        this.totalOrder = totalOrder;
    }
}