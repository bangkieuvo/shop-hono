package basePackage.DAO;

import basePackage.Entity.User;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void add(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}

	public User get(long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(User.class, id);
	}

	public List<User> getAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM User", User.class).getResultList();
	}

	public User getByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM User WHERE username = :username";
		return session.createQuery(hql, User.class).setParameter("username", username).uniqueResult();
	}

	public void update(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
	}

	public void delete(int id) {
		User user = get(id);
		if (user != null) {
			Session session = sessionFactory.getCurrentSession();
			session.delete(user);
		}
	}
}
