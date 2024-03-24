package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.Product;

@Repository(value = "ProductDAO")
public class ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(product);
	}
	public void update(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(product);
	}
	public Product findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product product = session.find(Product.class,id);
		return product;
	}
	public void remove(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(product);
	}
	public List<Product> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    List<Product> listProduct = session.createQuery("FROM Product", Product.class).getResultList();
	    return listProduct;
	  }
}
