package pl.sokitloczone.juiceshop.product;

import com.sun.istack.NotNull;
import org.hibernate.validator.constraints.Length;
import pl.sokitloczone.juiceshop.box.Box;
import pl.sokitloczone.juiceshop.orders.Order;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @Length(max = 500)
    private String description;

    @NotNull
    private Long price;

    @ManyToOne
    private Box box;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Box getBox() {
        return box;
    }

    public void setBox(Box box) {
        this.box = box;
    }
}