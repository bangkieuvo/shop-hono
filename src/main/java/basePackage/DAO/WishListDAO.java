package basePackage.DAO;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import basePackage.Entity.WishList;

@Repository(value = "wishListDAO")
@Transactional(rollbackFor = Exception.class)
public class WishListDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void save(WishList wishList) {
		Session session = sessionFactory.getCurrentSession();
		session.save(wishList);
	}

	public void update(WishList wishList) {
		Session session = sessionFactory.getCurrentSession();
		wishList.updateListItem_Data();
		session.update(wishList);
	}

	public void delete(WishList wishList) {
		Session session = sessionFactory.getCurrentSession();
		session.remove(wishList);
	}
	public WishList findByCustomerID(long customerID) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(WishList.class, customerID);
	}

	public List<WishList> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM WishList", WishList.class).getResultList();
	}
}
