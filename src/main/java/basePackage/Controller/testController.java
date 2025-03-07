package basePackage.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import basePackage.DAO.UserDAO;
import basePackage.DTO.CartDTO;
import basePackage.DTO.UserDTO;
import basePackage.Entity.User;
import basePackage.Service.CartService;
import basePackage.Service.UserService;


@RestController
@RequestMapping("/api/")
public class testController {
	@Autowired
	private UserService service;
	@Autowired
	private UserDAO dao;
	@RequestMapping(value = {"getUser/{id}"})
	public UserDTO getUser(@PathVariable long id) {
		System.out.println(id);
		User u = dao.get(id);
		UserDTO ud = this.service.getUserDTOWithInfo(u);
		if(ud==null)
			System.out.println("NULLLLLL!");
		return ud;
	}
	@Autowired
	private CartService cartService;
	@RequestMapping(value = {"getCart/{id}"})
	public CartDTO getCartDTO(@PathVariable long id) {
		return cartService.getCartByUserId(id);
	}
}
