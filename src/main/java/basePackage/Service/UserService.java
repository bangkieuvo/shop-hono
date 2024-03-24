package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.UserDAO;
import basePackage.Entity.User;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserDAO userDAO;

	public void save(User user) {
		userDAO.save(user);
	}

	public void update(User user) {
		userDAO.update(user);
	}

	public User findById(int id) {
		return userDAO.findById(id);
	}

	public void remove(User user) {
		userDAO.remove(user);
	}

	public User login(String username, int password) {
		return userDAO.login(username, password);

	}

	public List<User> findAll() {
		return userDAO.findAll();
	}
}
