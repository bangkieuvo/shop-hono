package basePackage.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import basePackage.Entity.Product;
import basePackage.Entity.ProductInCart;
import basePackage.Entity.User;
import basePackage.Service.ProductService;
import basePackage.Service.UserService;

@Controller
@ResponseBody
public class API {
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private UserService userInfoService;

	@RequestMapping(value = "getProduct/{id}")
	public Product getProductById(@PathVariable(name = "id") int id) {
		Product product = productService.findById(id);
		if (product == null) {
			System.out.println("NULL");
		}
		return product;
	}

	@RequestMapping(value = "checkLogin", method = RequestMethod.POST)
	public User login(@RequestParam(name = "username") String username,
			@RequestParam(name = "password") String password) {
		User user = userService.login(username, password.hashCode());
		return user;
	}

	@RequestMapping(value = "getUserInfo/{id}")
	public User getUserInfo(@PathVariable(name = "id") int id) {
		return userInfoService.findById(id);
	}

}
