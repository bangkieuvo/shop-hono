package Main;

import java.util.Arrays;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import basePackage.DAO.UserDAO;
import basePackage.DAO.UserInfoDAO;
import basePackage.DTO.UserDTO;
import basePackage.Entity.User;
import basePackage.Entity.UserInfo;
import basePackage.Service.UserService;
import basePackage.Tool.BCryptHasher;

public class app {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		UserDAO dao = context.getBean("userDAO",UserDAO.class);
		User u = dao.get(4);
		UserInfo ui = context.getBean("userInfoDAO",UserInfoDAO.class).getByUserId(u.getId());
		UserDTO ud = context.getBean("userService",UserService.class).getUserDTOWithInfo(u);
		System.out.println(ud.getUserInfo().getFullName());
	}
}
