package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basePackage.Entity.UserInfo;

@Repository(value = "UserInfoDAO")
public class UserInfoDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(UserInfo userInfo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(userInfo);
	}
	public void update(UserInfo userInfo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(userInfo);
	}
	public UserInfo findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		UserInfo userInfo = session.find(UserInfo.class,id);
		return userInfo;
	}
	public void remove(UserInfo userInfo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(userInfo);
	}
	public List<UserInfo> findAll() {
	    Session session = this.sessionFactory.getCurrentSession();
	    List<UserInfo> listUserInfo = session.createQuery("FROM UserInfo", UserInfo.class).getResultList();
	    return listUserInfo;
	  }
}
