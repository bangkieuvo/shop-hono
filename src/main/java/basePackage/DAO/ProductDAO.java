package basePackage.DAO;

import basePackage.Entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDAO {
	@Autowired
    private SessionFactory sessionFactory;

    public void save(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);;
    }

    public Product get(Long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Product.class, id);
    }

    public List<Product> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query<Product> query = session.createQuery("FROM Product", Product.class);
        return query.getResultList();
    }

    public List<Product> getByCategoryId(Long categoryId) {
        Session session = sessionFactory.getCurrentSession();
        String hql = "FROM Product WHERE category.id = :categoryId";
        Query<Product> query = session.createQuery(hql, Product.class);
        query.setParameter("categoryId", categoryId);
        return query.getResultList();
    }

    public void update(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.update(product);
    }

    public void delete(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = get(id);
        if (product != null) {
            session.delete(product);
        }
    }
}