package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.AccountDAO;
import basePackage.Entity.Account;

@Service
@Transactional
public class AccountService {
	@Autowired
	private AccountDAO accountDAO;

	public Account findByCustomerID(long customerID) {
		return accountDAO.findByCustomerID(customerID);
	}

	public List<Account> findAll() {
		return accountDAO.findAll();
	}

	public boolean checkExistByAccount(String account) {
		return accountDAO.checkExistByAccount(account);
	}

	public void save(Account account) {
		accountDAO.save(account);
	}

	public void update(Account account) {
		accountDAO.update(account);
	}

	public void delete(long acustomerID) {
		Account account = accountDAO.findByCustomerID(acustomerID);
		if (account != null) {
			accountDAO.delete(account);
		}
	}

	public Account Login(String account, long hashedPassword) {
		List<Account> list = accountDAO.findToLogin(account, hashedPassword);
		if (list.size() != 0) {
			return list.get(0);
		}
		return null;
	}
}
