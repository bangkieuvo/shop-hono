package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.ProductInCart;

@Repository(value = "ProductInCartDAO")
public class ProductInCartDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(ProductInCart productInCart) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(productInCart);
	}
	public void update(ProductInCart productInCart) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(productInCart);
	}
	public ProductInCart findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ProductInCart productInCart = session.find(ProductInCart.class,id);
		return productInCart;
	}
	public void remove(ProductInCart productInCart) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(productInCart);
	}
	public List<ProductInCart> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    List<ProductInCart> listProductInCart = session.createQuery("FROM ProductInCart", ProductInCart.class).getResultList();
	    return listProductInCart;
	  }
}
