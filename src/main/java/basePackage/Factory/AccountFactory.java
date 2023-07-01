package basePackage.Factory;

import java.io.IOException;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import basePackage.Entity.Account;
import basePackage.Entity.Cart;
import basePackage.Entity.WishList;
import basePackage.Model.Customer;
import basePackage.Service.AccountService;
import basePackage.Service.CartService;
import basePackage.Service.ProductService;
import basePackage.Service.WishListService;

@Component
public class AccountFactory {
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

	public static boolean checkRegister(String account) {
		if (accountService.checkExistByAccount(account))
			return false;
		else {
			return true;
		}
	}

	public static boolean register(String account, String password, String passwordAgain, String firstName,
			String middleName, String lastName) throws IOException {
		if (!password.equals(passwordAgain)) {
			return false;
		}
		if (checkRegister(account) == false) {
			return false;
		}
		Account a = new Account();
		a.setCustomerID(Generator.generateCustomerID());
		a.setAccount(account);
		a.setHashedPassword(password.hashCode());
		a.setFirstName(firstName);
		a.setMiddleName(middleName);
		a.setLastName(lastName);

		accountService.save(a);

		Cart cart = new Cart(a.getCustomerID());
		cartService.save(cart);

		WishList wishList = new WishList(a.getCustomerID());
		wishListService.save(wishList);

		return true;
	}

	public static Account login(String account, String password) {
		return accountService.Login(account, password.hashCode());
	}

	public static void delete(Account account) {
		cartService.delete(account.getCustomerID());
		wishListService.delete(account.getCustomerID());
		accountService.delete(account.getCustomerID());
	}

	public static void delete(long customerID) {
		Account account = accountService.findByCustomerID(customerID);
		delete(account);
	}

	public static Account getAccount(long customerID) {
		return accountService.findByCustomerID(customerID);
	}

	public static void updateAccount(Account account) {
		accountService.update(account);
	}
}
