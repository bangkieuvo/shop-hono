package basePackage.DAO;

import basePackage.Entity.WishlistItem;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class WishlistItemDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void add(WishlistItem item) {
        Session session = sessionFactory.getCurrentSession();
        session.save(item);
    }

    public void delete(WishlistItem item) {
    	sessionFactory.getCurrentSession().delete(item);
    }
    public void deleteByUserIdAndProductId(Long userId, Long productId) {
        Session session = sessionFactory.getCurrentSession();
        WishlistItem item = session.createQuery(
                "delete FROM WishlistItem WHERE userId = :userId AND product.id = :productId", WishlistItem.class)
                .setParameter("userId", userId)
                .setParameter("productId", productId)
                .uniqueResult();
        if (item != null) {
            session.delete(item);
        }
    }

    public List<WishlistItem> getByUserId(Long userId) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("FROM WishlistItem WHERE userId = :userId", WishlistItem.class)
                      .setParameter("userId", userId)
                      .getResultList();
    }

}
