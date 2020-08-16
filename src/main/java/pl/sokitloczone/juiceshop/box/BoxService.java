package pl.sokitloczone.juiceshop.box;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sokitloczone.juiceshop.product.Product;
import pl.sokitloczone.juiceshop.product.ProductRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class BoxService {

    private BoxRepository boxRepository;
    private ProductRepository productRepository;

    @Autowired
    public BoxService(BoxRepository boxRepository, ProductRepository productRepository){
        this.boxRepository = boxRepository;
        this.productRepository = productRepository;
    }

    public List<Box> findAllBoxes(){
        return boxRepository.findAll();
    }

    public Box findById(Long id){
        return boxRepository.findById(id).get();
    }

    public void saveBox(Box box){
        boxRepository.save(box);
    }

    public void deleteBox(Box box){
        List<Product> productList = productRepository.findAllByBox(box);
        for(Product productEach : productList){
            productEach.setBox(null);
        }
        productRepository.saveAll(productList);
        boxRepository.delete(box);
    }

}
