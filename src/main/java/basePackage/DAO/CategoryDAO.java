package basePackage.DAO;

import basePackage.Entity.Category;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void add(Category category) {
		Session session = sessionFactory.getCurrentSession();
		session.save(category);
	}

	public List<Category> getAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Category", Category.class).getResultList();
	}

	public Category get(Long id) {
        Session session = sessionFactory.getCurrentSession();
		return session.get(Category.class, id);
	}

	public void update(Category category) {
        Session session = sessionFactory.getCurrentSession();
		session.update(category);
	}

	public void delete(Long id) {
		Category category = get(id);
		if (category != null) {
			sessionFactory.getCurrentSession().delete(category);
		}
	}
}
