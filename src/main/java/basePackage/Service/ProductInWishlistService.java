package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.ProductInWishlistDAO;
import basePackage.Entity.ProductInWishlist;

@Service
@Transactional
public class ProductInWishlistService {
	@Autowired
	private ProductInWishlistDAO productInWishlistDAO;

	public void save(ProductInWishlist productInWishlist) {
		productInWishlistDAO.save(productInWishlist);
	}

	public void update(ProductInWishlist productInWishlist) {
		productInWishlistDAO.update(productInWishlist);
	}

	public ProductInWishlist findById(int id) {
		return productInWishlistDAO.findById(id);
	}
	
	public void remove(ProductInWishlist productInWishlist) {
		productInWishlistDAO.remove(productInWishlist);
	}
	
	public List<ProductInWishlist> findAll() {
		return productInWishlistDAO.findAll();
	}
}
