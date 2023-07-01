package Main;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import basePackage.Entity.Account;
import basePackage.Entity.Cart;
import basePackage.Entity.Product;
import basePackage.Entity.Revenue;
import basePackage.Factory.AccountFactory;
import basePackage.Factory.CustomerFactory;
import basePackage.Factory.ItemFactory;
import basePackage.Factory.ProductFactory;
import basePackage.Factory.pathFactory;
import basePackage.Model.Customer;
import basePackage.Model.Item;
import basePackage.Service.AccountService;
import basePackage.Service.CartService;
import basePackage.Service.ProductService;
import basePackage.Service.RevenueService;
import basePackage.Service.WishListService;

public class app {
	public static void main(String[] args) throws IOException {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
//		Product product = new Product();
//		product.setProductID(3);
//		product.setProductName("Car Vails"); 
//		product.setDescription("!!!!!");
//		product.setProductCost(500);
//		product.setQuantity(47);
//		ProductFactory.save(product);
		Product product = ProductFactory.getProduct(21);
		System.out.println(product.getProductCost());
		ProductFactory.update(product);
		System.out.println("Done!");
	}
}
