package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import basePackage.Entity.Product;
import basePackage.Entity.Revenue;

@Repository(value = "revenueDAO")
@Transactional(rollbackFor = Exception.class)
public class RevenueDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(final Revenue revenue) {
		Session session = sessionFactory.getCurrentSession();
		session.save(revenue);
	}
	public void update(final Revenue revenue) {
		Session session = sessionFactory.getCurrentSession();
		session.update(revenue);
	}
	public Revenue findByProductID(final long productID) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Revenue.class, productID);
	}
	
	public List<Revenue> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Revenue", Revenue.class).getResultList();
	}
}
