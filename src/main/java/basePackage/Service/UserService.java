package basePackage.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import basePackage.DAO.UserDAO;
import basePackage.DAO.UserInfoDAO;
import basePackage.DTO.UserDTO;
import basePackage.DTO.UserInfoDTO;
import basePackage.Entity.User;
import basePackage.Entity.UserInfo;

@Service
public class UserService {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private UserInfoDAO userInfoDAO;
	public User getUserByUsername(String username) {
		return userDAO.getByUsername(username);
	}
	public UserDTO getUserDTOWithoutInfo(User user) {
		UserDTO userDTO = new UserDTO.Builder(user.getId(), user.getUsername(), user.getEmail()).build();
		return userDTO;
	}
	public UserDTO getUserDTOWithInfo(User user) {
		UserInfo userInfo =  userInfoDAO.getByUserId(user.getId());
		UserInfoDTO userInfoDTO = new UserInfoDTO(userInfo.getFullName(),userInfo.getAddress());
		UserDTO userDTO = new UserDTO.Builder(user.getId(), user.getUsername(), user.getEmail())
				.setUserInfo(userInfoDTO)
				.build();
		return userDTO;
	}
}
