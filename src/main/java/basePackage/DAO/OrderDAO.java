package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.Order;

@Repository(value = "OrderDAO")
public class OrderDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(order);
	}
	public void update(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(order);
	}
	public Order findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Order order = session.find(Order.class,id);
		return order;
	}
	public void remove(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(order);
	}
	public List<Order> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    List<Order> listOrder = session.createQuery("FROM Order", Order.class).getResultList();
	    return listOrder;
	  }
}
