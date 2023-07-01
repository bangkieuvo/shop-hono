package basePackage.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import basePackage.Factory.CartFactory;
import basePackage.Factory.CustomerFactory;
import basePackage.Factory.ItemFactory;
import basePackage.Model.Customer;
import basePackage.Model.Item;

@Controller
public class CartController {
	@RequestMapping(value = "addToCart", method = RequestMethod.POST)
	public void addToCart(@RequestParam(name = "productID") long productID,@RequestParam(name = "quantity", required = false, defaultValue = "1") long quantity, @RequestParam(name = "url") String prePage,
			HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Customer customer = CustomerFactory.login(req, resp);
		RequestDispatcher dispatcher = req.getRequestDispatcher(prePage);
		PrintWriter writer = resp.getWriter();
		if (customer == null) {
			writer.println(
					"<b><font color='red'>You are not loged in! Please <a href=\"login\">login </a> to view Cart!</b></font>");
			dispatcher.include(req, resp);
			return;
		}
		if (customer.addToCart(productID, quantity)) {
			CustomerFactory.updateCustomer(customer);
			writer.println("<font color='green'><b>Add to cart successfully!</b></font>");
		} else {
			writer.println("<font color='red'><b>Add to cart fail!</b></font>");
		}
		dispatcher.include(req, resp);
	}

	@RequestMapping(value = "updateCart")
	public void updateCart(HttpServletRequest req, HttpServletResponse resp, Model model) {
		Customer customer = CustomerFactory.login(req, resp);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/shop-hono/cart");
		if (customer != null) {
			Enumeration<String> itemIDs = req.getParameterNames();
			Iterator<String> iterator = itemIDs.asIterator();
			while (iterator.hasNext()) {
				long itemID = Long.parseLong(iterator.next());
				long quantity = Long.parseLong(req.getParameter("" + itemID));
				CartFactory.updateCart(customer, itemID, quantity);
			}
		}
		resp.setHeader("Location", "/shop-hono/cart");
		resp.setStatus(302);
	}

	@RequestMapping(value = "deleteFromCart")
	public void deleteFromCart(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam(name = "itemID") long itemID, @RequestParam(name = "url") String prePage) {
		Customer customer = CustomerFactory.login(req, resp);
		Item item = customer.getCart().findItem(itemID);
		if(item != null) {
			customer.addToCart(itemID, -item.getQuantity());
		}
		CustomerFactory.updateCustomer(customer);
		resp.setHeader("Location", "/shop-hono/" + prePage);
		resp.setStatus(302);
	}

	
}
