package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.ProductCategoryDAO;
import basePackage.Entity.ProductCategory;

@Service
@Transactional
public class ProductCategoryService {
	@Autowired
	private ProductCategoryDAO productCategoryDAO;

	public void save(ProductCategory productCategory) {
		productCategoryDAO.save(productCategory);
	}

	public void update(ProductCategory productCategory) {
		productCategoryDAO.update(productCategory);
	}

	public ProductCategory findById(int id) {
		return productCategoryDAO.findById(id);
	}
	
	public void remove(ProductCategory productCategory) {
		productCategoryDAO.remove(productCategory);
	}
	
	public List<ProductCategory> findAll() {
		return productCategoryDAO.findAll();
	}
}
