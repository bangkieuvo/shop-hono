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
	private ProductDAO dao;
	
	public void save(Product product) {
		dao.save(product);
	}
	public void update(Product product) {
		dao.update(product);
	}
	public void delete(long productID) {
		Product product = dao.findByProductID(productID);
		if(product != null) {
			dao.delete(product);
		}
	}
	
	public Product findByProductID(long productID) {
		return dao.findByProductID(productID);
	}
	
	public List<Product> findAll(){
		return dao.findAll();
	}
}
