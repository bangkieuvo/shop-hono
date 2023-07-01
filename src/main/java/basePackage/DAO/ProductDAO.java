package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import basePackage.Entity.Product;

@Repository(value = "productDAO")
@Transactional(rollbackFor = Exception.class)
public class ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(final Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.save(product);
	}

	public void update(final Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.update(product);
	}

	public Product findByProductID(final long productID) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Product.class, productID);
	}

	public void delete(final Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.remove(product);
	}

	public List<Product> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Product", Product.class).getResultList();
	}
}
