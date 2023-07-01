package basePackage.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import basePackage.DAO.CartDAO;
import basePackage.Entity.Cart;

@Service
@Transactional
public class CartService {
	@Autowired
	private CartDAO cartDAO;

	public void save(Cart cart) {
		cartDAO.save(cart);
	}

	public void update(Cart cart) {
		cartDAO.update(cart);
	}

	public void delete(long customerID) {
		Cart cart = cartDAO.findByCustomerID(customerID);
		if (cart != null) {
			cartDAO.delete(cart);
		}
	}

	public Cart findByCustomerID(long customerID) {
		Cart cart = cartDAO.findByCustomerID(customerID);
		cart.updateListItem();
		return cart;
	}
	
	public List<Cart> findAll(){
		List<Cart> list = cartDAO.findAll();
		for(Cart cart : list) {
			cart.updateListItem();
		}
	return list;
	}
}
