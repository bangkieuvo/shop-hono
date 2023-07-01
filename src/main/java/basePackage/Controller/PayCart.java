package basePackage.Controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import basePackage.Factory.CartFactory;
import basePackage.Factory.CustomerFactory;
import basePackage.Factory.ItemFactory;
import basePackage.Function.Pay;
import basePackage.Model.Customer;
import basePackage.Model.Item;

@Controller
public class PayCart {
	@RequestMapping(value = "payCart")
	public String payCart(Model model, HttpServletRequest req, HttpServletResponse resp) {
		Customer customer = CustomerFactory.login(req, resp);
		model.addAttribute("customer", customer);
		return "payCart";
	}

	@RequestMapping(value = "pay")
	public void pay(HttpServletRequest req, HttpServletResponse resp, Model model) {
		Customer customer = CustomerFactory.login(req, resp);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/shop-hono/payCart");
		if (customer != null) {
			Enumeration<String> itemIDs = req.getParameterNames();
			Iterator<String> iterator = itemIDs.asIterator();
			
			List<Item>list = new ArrayList<Item>();
			while (iterator.hasNext()) {
				String name = iterator.next();
				if(name.charAt(0)=='_') {	
					if("on".equals(req.getParameter(name))){
						name = name.substring(1);
						long itemID = Long.parseLong(name);
						long quantity = Long.parseLong(req.getParameter("" + itemID));
						list.add(ItemFactory.getItem(itemID, quantity));
						customer.addToCart(itemID, -quantity);
					}
				}
			}
			CustomerFactory.updateCustomer(customer);
			Pay.pay(list);
		}
		resp.setHeader("Location", "/shop-hono/payCart"); 
		resp.setStatus(302);
	}
}
