package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.ProductInWishlist;

@Repository(value = "ProductInWishlistDAO")
public class ProductInWishlistDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(ProductInWishlist productInWishlist) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(productInWishlist);
	}
	public void update(ProductInWishlist productInWishlist) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(productInWishlist);
	}
	public ProductInWishlist findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ProductInWishlist productInWishlist = session.find(ProductInWishlist.class,id);
		return productInWishlist;
	}
	public void remove(ProductInWishlist productInWishlist) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(productInWishlist);
	}
	public List<ProductInWishlist> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    List<ProductInWishlist> listProductInWishlist = session.createQuery("FROM ProductInWishlist", ProductInWishlist.class).getResultList();
	    return listProductInWishlist;
	  }
}
