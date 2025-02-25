package basePackage.DAO;

import basePackage.Entity.OrderItem;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class OrderItemDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(OrderItem item) {
        Session s = sessionFactory.getCurrentSession();
        s.saveOrUpdate(item);
    }

    public OrderItem get(Long id) {
        Session s = sessionFactory.getCurrentSession();
        return s.get(OrderItem.class, id);
    }

    public List<OrderItem> getByOrderId(Long orderId) {
        Session s = sessionFactory.getCurrentSession();
        return s.createQuery("FROM OrderItem WHERE order.id = :orderId", OrderItem.class)
                .setParameter("orderId", orderId)
                .getResultList();
    }

    public void delete(Long id) {
        Session s = sessionFactory.getCurrentSession();
        OrderItem item = s.get(OrderItem.class, id);
        if (item != null) s.delete(item);
    }
}
