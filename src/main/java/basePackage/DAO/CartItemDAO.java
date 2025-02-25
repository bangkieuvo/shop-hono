package basePackage.DAO;

import basePackage.Entity.CartItem;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CartItemDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void save(CartItem cartItem) {
		Session session = sessionFactory.getCurrentSession();
		if (cartItem.getQuantity() == 0) {
			session.delete(cartItem);
		} else {
			session.save(cartItem);

		}
	}

	public void deleteByUserId(Long userId) {
		Session session = sessionFactory.getCurrentSession();
		session.createNativeQuery("call clearCartByUserId(:userId)").setParameter("userId", userId).executeUpdate();
	}

	public void deleteByUserIdAndProductId(Long userId, Long productId) {
		Session session = sessionFactory.getCurrentSession();
		CartItem item = session
				.createQuery("FROM CartItem WHERE userId = :userId AND product.id = :productId", CartItem.class)
				.setParameter("userId", userId).setParameter("productId", productId).uniqueResult();
		if (item != null) {
			session.delete(item);
		}
	}

	public CartItem getByUserIdAndProductId(Long userId, Long productId) {
		Session session = sessionFactory.getCurrentSession();
		CartItem item = session
				.createQuery("FROM CartItem WHERE userId = :userId AND product.id = :productId", CartItem.class)
				.setParameter("userId", userId).setParameter("productId", productId).uniqueResult();

		return item;

	}

	public List<CartItem> getByUserId(Long userId) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM CartItem WHERE userId = :userId", CartItem.class)
				.setParameter("userId", userId).getResultList();
	}

	public void update(CartItem item) {
		Session session = sessionFactory.getCurrentSession();
		session.update(item);
	}
}
