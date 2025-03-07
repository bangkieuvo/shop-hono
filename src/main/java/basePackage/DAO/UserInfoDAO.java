package basePackage.DAO;

import basePackage.Entity.UserInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

import javax.transaction.Transactional;

@Repository
@Transactional
public class UserInfoDAO {

    @Autowired
    private SessionFactory sessionFactory;


    public void add(UserInfo userInfo) {
    	Session session = sessionFactory.getCurrentSession();
        session.save(userInfo);
    }

    public List<UserInfo> getAll() {Session session = sessionFactory.getCurrentSession();
        return session.createQuery("FROM UserInfo", UserInfo.class).getResultList();
    }



    public UserInfo getByUserId(long userId) {
        String hql = "FROM UserInfo WHERE user_id = :userId";
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery(hql, UserInfo.class)
                      .setParameter("userId", userId)
                      .uniqueResult();
    }

    public void update(UserInfo userInfo) {
    	Session session = sessionFactory.getCurrentSession();
        session.update(userInfo);
    }

    public void deleteByUserId(long userId) {
        UserInfo userInfo = getByUserId(userId);
        if (userInfo != null) {
        	Session session = sessionFactory.getCurrentSession();
            session.delete(userInfo);
        }
    }
}
