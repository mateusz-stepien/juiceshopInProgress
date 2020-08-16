package pl.sokitloczone.juiceshop.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sokitloczone.juiceshop.box.Box;
import pl.sokitloczone.juiceshop.box.BoxService;

import java.util.List;

@Controller
@RequestMapping("/adminPanel/products")
public class ProductController {

    private ProductService productService;
    private BoxService boxService;

    @Autowired
    public ProductController(ProductService productService, BoxService boxService){
        this.productService = productService;
        this.boxService = boxService;
    }

    @ModelAttribute("boxNames")
    public List<Box> users(){
        return boxService.findAllBoxes();
    }

    @GetMapping
    public String findAllProducts(Model model){
        model.addAttribute("products", productService.findAllProducts());
        return "adminPanelProducts";
    }

    @GetMapping(path = "/add")
    public String addProduct(Model model){
        model.addAttribute("product", new Product());
        return "productForm";
    }

    @PostMapping(path = "/save")
    public String updateProduct(@ModelAttribute("product") Product product){
        productService.saveProduct(product);
        return "redirect:/adminPanel/products";
    }

    @GetMapping(path = "/edit/{id}")
    public String editProduct(@PathVariable("id") Long id, Model model){
        model.addAttribute("product", productService.findProductById(id));
        return "productForm";
    }

    @GetMapping(path = "/delete/{id}")
    public String deleteProduct(@ModelAttribute Product product){
        productService.deleteProduct(product);
        return "redirect:/adminPanel/products";
    }

}