package basePackage.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import basePackage.Factory.AccountFactory;
import basePackage.Factory.CustomerFactory;
import basePackage.Factory.ProductFactory;
import basePackage.Model.Customer;

@Controller
public class URL {
	@RequestMapping("cart")
	public String cart(Model model, HttpServletRequest req, HttpServletResponse resp) {
		Customer customer = CustomerFactory.login(req, resp);
		model.addAttribute("customer", customer);
		return "cart";
	}

	@RequestMapping(value = "index")
	public String index(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		model.addAttribute("customer", CustomerFactory.login(req, resp));
		model.addAttribute("bestSeller", ProductFactory.getBestsellerList());
		return "index";
	}

	@RequestMapping("login")
	public String login(@RequestParam(name = "url", required = false)String prePage, HttpServletRequest req, HttpServletResponse resp, Model model) {
		Customer customer = CustomerFactory.login(req, resp);
		model.addAttribute("customer", customer);
		req.setAttribute("prePage", prePage);
		return "login";
	}

	@RequestMapping("my-account")
	public String my_account(Model model, HttpServletRequest req, HttpServletResponse resp) {
		Customer customer = CustomerFactory.login(req, resp);
		if (customer != null) {
			model.addAttribute("customer", customer);
			model.addAttribute("account", AccountFactory.getAccount(customer.getCustomerID()));
		}
		return "my-account";
	}

	@RequestMapping("product-details/{productID}")
	public String product_details(@PathVariable(name = "productID") long productID, Model model, HttpServletRequest req,
			HttpServletResponse resp) throws IOException {
		model.addAttribute("customer", CustomerFactory.login(req, resp));
		model.addAttribute("product", ProductFactory.getProduct(productID));
		model.addAttribute("bestSeller", ProductFactory.getBestsellerList());
		return "product-details";
	}

	@RequestMapping(value = "shop")
	public void _shop(HttpServletRequest req, HttpServletResponse resp, Model model) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/shop/1");
		dispatcher.forward(req, resp);
	}

	@RequestMapping(value = "wishlist")
	public String wishlist(Model model, HttpServletRequest req, HttpServletResponse resp) {
		Customer customer = CustomerFactory.login(req, resp);
		model.addAttribute("customer", customer);
		return "wishlist";
	}
}
