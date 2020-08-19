package pl.sokitloczone.juiceshop.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sokitloczone.juiceshop.box.BoxRepository;
import pl.sokitloczone.juiceshop.box.BoxService;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ProductService {

    private ProductRepository productRepository;
    private BoxService boxService;

    @Autowired
    public ProductService(ProductRepository productRepository, BoxService boxService){
        this.productRepository = productRepository;
        this.boxService = boxService;
    }

    public List<Product> findAllProducts(){
        return productRepository.findAll();
    }

    public List<Product> findAllProductsByBoxId(Long id){
        return productRepository.findAllByBoxId(id);
    }

    public void saveProduct(Product product){
        productRepository.save(product);
    }

    public Product findProductById(Long id){
        return productRepository.findById(id).get();
    }

    public void deleteProduct(Product product){
        productRepository.delete(product);
    }

}
