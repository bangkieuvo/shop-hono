package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.ProductCategory;

@Repository(value = "ProductCategoryDAO")
public class ProductCategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(ProductCategory productCategory) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(productCategory);
	}
	public void update(ProductCategory productCategory) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(productCategory);
	}
	public ProductCategory findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ProductCategory productCategory = session.find(ProductCategory.class,id);
		return productCategory;
	}
	public void remove(ProductCategory productCategory) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(productCategory);
	}
	public List<ProductCategory> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    List<ProductCategory> listProductCategory = session.createQuery("FROM ProductCategory", ProductCategory.class).getResultList();
	    return listProductCategory;
	  }
}
