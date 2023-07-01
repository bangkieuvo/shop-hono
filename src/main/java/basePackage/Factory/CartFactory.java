package basePackage.Factory;

import java.util.ArrayList;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import basePackage.Entity.Cart;
import basePackage.Entity.Product;
import basePackage.Model.Customer;
import basePackage.Model.Item;
import basePackage.Service.AccountService;
import basePackage.Service.CartService;
import basePackage.Service.ProductService;
import basePackage.Service.WishListService;

@Component
public class CartFactory {
	private static ProductService productService;
	private static AccountService accountService;
	private static CartService cartService;
	private static WishListService wishListService;

	@Autowired
	private ProductService productService_1;
	@Autowired
	private AccountService accountService_1;
	@Autowired
	private CartService cartService_1;
	@Autowired
	private WishListService wishListService_1;

	@PostConstruct
	private void factoryInit() {
		productService = productService_1;
		accountService = accountService_1;
		cartService = cartService_1;
		wishListService = wishListService_1;
	}

	public static Cart getNewCart(long customerID) {
		Cart cart = new Cart();
		cart.setCustomerID(customerID);
		return cart;
	}

	public static boolean updateCart(Customer customer, long itemID, long quantity) {
		Product product = productService.findByProductID(itemID);
		int oldItemIndex = customer.getCart().getListItem().indexOf(ItemFactory.getItem(itemID));
		long oldQuantity = customer.getCart().getListItem().get(oldItemIndex).getQuantity();
		long delta = quantity - oldQuantity;
		if ((delta <= 0) || (product.getQuantity() >= delta)) {
			customer.getCart().add(itemID, delta);
			CustomerFactory.updateCustomer(customer);
			return true;
		} 
		return false;
	}
}
