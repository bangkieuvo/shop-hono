package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.UserInfoDAO;
import basePackage.Entity.UserInfo;

@Service
@Transactional
public class UserInfoService {
	@Autowired
	private UserInfoDAO userInfoDAO;

	public void save(UserInfo userInfo) {
		userInfoDAO.save(userInfo);
	}

	public void update(UserInfo userInfo) {
		userInfoDAO.update(userInfo);
	}

	public UserInfo findById(int id) {
		return userInfoDAO.findById(id);
	}
	
	public void remove(UserInfo userInfo) {
		userInfoDAO.remove(userInfo);
	}
	
	public List<UserInfo> findAll() {
		return userInfoDAO.findAll();
	}
}
