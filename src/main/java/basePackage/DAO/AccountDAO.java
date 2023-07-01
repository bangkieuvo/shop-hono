package basePackage.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import basePackage.Entity.Account;

@Repository(value = "accountDAO")
@Transactional(rollbackFor = Exception.class)
public class AccountDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(final Account account) {
		Session session = sessionFactory.getCurrentSession();
		session.save(account);
	}

	public void update(final Account account) {
		Session session = sessionFactory.getCurrentSession();
		session.update(account);
	}

	public void delete(final Account account) {
		Session session = sessionFactory.getCurrentSession();
		session.remove(account);
	}

	public Account findByCustomerID(final long customerID) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Account.class, customerID);
	}

	public List<Account> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Account", Account.class).getResultList();
	}

	public List<Account> findByAccount(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Account a where a.account = " + account, Account.class).getResultList();
	}

	public List<Account> findToLogin(String account, long hashedPassowrd) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery(
				"FROM Account a where (a.account = '" + account + "') and (a.hashedPassword = " + hashedPassowrd + ")",
				Account.class).getResultList();
	}

	public boolean checkExistByAccount(String account) {
		Session session = sessionFactory.getCurrentSession();
		List<Account> list = session.createQuery("FROM Account a where (a.account = '" + account + "')", Account.class)
				.getResultList();
		if (list.size() != 0) {
			return true;
		}
		return false;
	}
}
