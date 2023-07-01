package basePackage.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import basePackage.Factory.CustomerFactory;
import basePackage.Factory.ItemFactory;
import basePackage.Model.Customer;

@Controller
public class WishListController {
	@RequestMapping(value = "addToWishList")
	public void addToWishList(@RequestParam(name = "productID") long productID,
			@RequestParam(name = "url") String prePage, HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		Customer customer = CustomerFactory.login(req, resp);
		customer.addToWishList(productID);
		CustomerFactory.updateCustomer(customer);
		resp.setHeader("Location", "/shop-hono/" + prePage);
		resp.setStatus(302);
	}
	
	@RequestMapping(value = "deleteFromWishList")
	public void deleteFromWishList(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam(name = "itemID") long itemID, @RequestParam(name = "url") String prePage) {
		Customer customer = CustomerFactory.login(req, resp);
		customer.getWishList().getListItem().remove(ItemFactory.getItem(itemID));
		CustomerFactory.updateCustomer(customer);
		resp.setHeader("Location", "/shop-hono/" + prePage);
		resp.setStatus(302);
	}
}
