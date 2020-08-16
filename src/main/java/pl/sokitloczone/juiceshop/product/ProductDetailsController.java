package pl.sokitloczone.juiceshop.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pl.sokitloczone.juiceshop.box.BoxService;


@Controller
public class ProductDetailsController {

    private ProductService productService;
    private BoxService boxService;

    @Autowired
    public ProductDetailsController(ProductService productService, BoxService boxService) {
        this.productService = productService;
        this.boxService = boxService;
    }

    @GetMapping(path = "/juices")
    public String findAllProducts(Model model) {
        model.addAttribute("products", productService.findAllProducts());
        return "juices";
    }

    @GetMapping(path = "/productDetails/{id}")
    public String showProduct(@PathVariable("id") Long id, Model model){
        model.addAttribute("product", productService.findProductById(id));
        model.addAttribute("boxes",boxService.findAllBox());
        return "productDetails";
    }

}