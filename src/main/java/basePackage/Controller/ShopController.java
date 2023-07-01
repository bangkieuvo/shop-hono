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

import basePackage.Factory.CustomerFactory;
import basePackage.Factory.ProductFactory;

@Controller
public class ShopController {
	@RequestMapping(value = "shop/{page}")
	public String shopPage(@PathVariable(name = "page") long page, Model model, HttpServletRequest req,
			HttpServletResponse resp) {
		model.addAttribute("customer", CustomerFactory.login(req, resp));
		model.addAttribute("listProduct", ProductFactory.getListProduct(page));
		long numberOfProduct = ProductFactory.getProductCount();
		req.setAttribute("numberOfProducts", numberOfProduct);

		req.setAttribute("pageNow", page);

		long numberOfPages = numberOfProduct / 12;
		if (numberOfProduct % 12 != 0) {
			numberOfPages++;
		}
		req.setAttribute("numberOfPages", numberOfPages);
		return "shop";
	}
}
