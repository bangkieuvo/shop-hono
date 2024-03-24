package basePackage.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Page {
	@RequestMapping(value = { "cart" })
	public String cart() {
		return "cart";
	}

	@RequestMapping(value = { "index" })
	public String index() {
		return "index";
	}

	@RequestMapping(value = { "login" }, method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = { "my-account" })
	public String myAccount() {
		return "my-account";
	}

	@RequestMapping(value = { "payCart" })
	public String payCart() {
		return "payCart";
	}

	@RequestMapping(value = { "product-detail" })
	public String productDetail() {
		return "product-detail";
	}

	@RequestMapping(value = { "shop" })
	public String shop() {
		return "shop";
	}

	@RequestMapping(value = { "wishlist" })
	public String wishlist() {
		return "wishlist";
	}

}
