package basePackage.DAO;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.User;

@Repository(value = "UserDAO")
public class UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(user);
	}

	public void update(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(user);
	}

	public User findById(int id) {
		Session session = this.sessionFactory.openSession();
		User user = session.find(User.class, id);
		session.close();
		return user;
	}

	public void remove(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(user);
	}

	public User login(String username, int hashedPassword) {
		Session session = this.sessionFactory.openSession();
		String sql = "FROM User u where (u.username = '" + username + "' )and (password = " + hashedPassword + ")";
		Query query = session.createQuery(sql, User.class);
		User user = null;
		try {
			user = (User) query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
		return user;
	}

	public List<User> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> listUser = session.createQuery("FROM User", User.class).getResultList();
		return listUser;
	}
}
