package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.ProductInCartDAO;
import basePackage.Entity.ProductInCart;

@Service
@Transactional
public class ProductInCartService {
	@Autowired
	private ProductInCartDAO productInCartDAO;

	public void save(ProductInCart productInCart) {
		productInCartDAO.save(productInCart);
	}

	public void update(ProductInCart productInCart) {
		productInCartDAO.update(productInCart);
	}

	public ProductInCart findById(int id) {
		return productInCartDAO.findById(id);
	}
	
	public void remove(ProductInCart productInCart) {
		productInCartDAO.remove(productInCart);
	}
	
	public List<ProductInCart> findAll() {
		return productInCartDAO.findAll();
	}
}
