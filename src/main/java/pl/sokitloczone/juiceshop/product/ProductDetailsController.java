package pl.sokitloczone.juiceshop.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.sokitloczone.juiceshop.product.ProductService;
import pl.sokitloczone.juiceshop.user.User;

@Controller
public class ProductDetailsController {

    private ProductService productService;

    @Autowired
    public ProductDetailsController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping(path = "/productDetails/{id}")
    public String showProduct(@PathVariable("id") Long id, Model model){
        model.addAttribute("product", productService.findProductById(id));
        return "productDetails";
    }

}