package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.ProductDAO;
import basePackage.Entity.Product;

@Service
@Transactional
public class ProductService {
	@Autowired
	private ProductDAO productDAO;

	public void save(Product product) {
		productDAO.save(product);
	}

	public void update(Product product) {
		productDAO.update(product);
	}

	public Product findById(int id) {
		return productDAO.findById(id);
	}
	
	public void remove(Product product) {
		productDAO.remove(product);
	}
	
	public List<Product> findAll() {
		return productDAO.findAll();
	}
}
