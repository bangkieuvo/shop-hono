package basePackage.DAO;

import basePackage.Entity.Order;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class OrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(Order o) {
        Session s = sessionFactory.getCurrentSession();
        s.saveOrUpdate(o);
    }

    public Order get(Long id) {
        Session s = sessionFactory.getCurrentSession();
        return s.get(Order.class, id);
    }

    public List<Order> getByUserId(Long userId) {
        Session s = sessionFactory.getCurrentSession();
        return s.createQuery("FROM Order WHERE user.id = :userId", Order.class)
                .setParameter("userId", userId)
                .getResultList();
    }

    public void delete(Long id) {
        Session s = sessionFactory.getCurrentSession();
        Order order = s.get(Order.class, id);
        if (order != null) s.delete(order);
    }
}
