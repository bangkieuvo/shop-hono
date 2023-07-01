package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import basePackage.Entity.Cart;

@Repository(value = "cartDAO")
@Transactional(rollbackFor = Exception.class)
public class CartDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cart);
	}

	public void update(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		cart.updateListItem_Data();
		session.update(cart);
	}

	public void delete(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.remove(cart);
	}
	public Cart findByCustomerID(long customerID) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Cart.class, customerID);
	}
	public List<Cart> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Cart", Cart.class).getResultList();
	}
}
