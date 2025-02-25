package Main;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import basePackage.DAO.OrderDAO;
import basePackage.DTO.CartItemDTO;
import basePackage.Entity.Order;
import basePackage.Entity.OrderItem;
import basePackage.Service.CartService;


public class app {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		long number = 3;
		CartService s = (CartService)context.getBean("cartService");
		s.updateCartItemQuantity(number, 3, 0);
		for(CartItemDTO item:s.getCartByUserId(number).getCartItems()) {
			System.out.println(item.getProductName()+"    :     "+item.getQuantity());
		}
	}
}
