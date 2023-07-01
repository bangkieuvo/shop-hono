package basePackage.Factory;

import javax.annotation.PostConstruct;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import basePackage.Entity.Account;
import basePackage.Model.Customer;
import basePackage.Model.LoginAccount;
import basePackage.Service.AccountService;
import basePackage.Service.CartService;
import basePackage.Service.ProductService;
import basePackage.Service.WishListService;

@Component
public class CustomerFactory {
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

	public static Customer getCustomer(Account account) {
		if (account == null) {
			return null;
		}
		Customer customer = new Customer();
		long customerID = account.getCustomerID();
		String name = account.getFirstName() + " " + account.getMiddleName() + " " + account.getLastName();
		customer.setCustomerID(customerID);
		customer.setName(name);
		customer.setCart(cartService.findByCustomerID(customerID));
		customer.setWishList(wishListService.findByCustomerID(customerID));
		return customer;
	}

	public static Customer getCustomer(long customerID) {
		return getCustomer(accountService.findByCustomerID(customerID));
	}

	public static void updateCustomer(Customer customer) {
		cartService.update(customer.getCart());
		wishListService.update(customer.getWishList());
	}

	public static Customer login(HttpServletRequest req, HttpServletResponse resp) {
		Cookie[] cookies = req.getCookies();
		if(cookies == null) {
			return null;
		}
		String loginID = "";
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("loginID")) {
				loginID = cookie.getValue();
			}

		}
		HttpSession session = req.getSession();
		LoginAccount loginAccount = (LoginAccount) session.getAttribute(loginID);
		Account account = null;
		Customer customer = null;
		if (loginAccount != null) {
			account = AccountFactory.login(loginAccount.getAccount(), loginAccount.getPassword());
		}
		if (account != null) {
			customer = getCustomer(account);
		}
		return customer;
	}
	public static void logout(HttpServletRequest req, HttpServletResponse resp) {
		Cookie[] cookies = req.getCookies();
		String loginID = "";
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("loginID")) {
				loginID = cookie.getValue();
			}

		}
		HttpSession session = req.getSession();
		session.removeAttribute(loginID);
	}
}
