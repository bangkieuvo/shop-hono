package Main;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import basePackage.Controller.Login;
import basePackage.DAO.UserDAO;
import basePackage.Entity.ProductInWishlist;
import basePackage.Entity.User;
import basePackage.Service.ProductInWishlistService;
import basePackage.Service.UserService;

public class app {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		UserDAO dao = (UserDAO) context.getBean("UserDAO");
		User u = dao.login("admin2", "anhnhoem.".hashCode());
		System.out.println();
	}
}
