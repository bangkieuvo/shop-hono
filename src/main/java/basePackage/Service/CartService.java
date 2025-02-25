package basePackage.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.CartItemDAO;
import basePackage.DAO.ProductDAO;
import basePackage.DTO.CartDTO;
import basePackage.DTO.CartItemDTO;
import basePackage.Entity.CartItem;
import basePackage.Entity.Product;

@Service
@Transactional
public class CartService {
	@Autowired
	private CartItemDAO cartItemDAO;
	@Autowired
	private ProductDAO productDAO;

	public CartDTO getCartByUserId(long userId) {
		List<CartItemDTO> itemDTO = new ArrayList<CartItemDTO>();
		List<CartItem> items = cartItemDAO.getByUserId(userId);
		for (CartItem item : items) {
			itemDTO.add(new CartItemDTO(item));
		}
		return new CartDTO(userId, itemDTO);
	}

	public void addToCart(long userId, long productId, long quantity) {
		Product product = productDAO.get(productId);
		if (product == null || product.getStock() < quantity) {
			throw new RuntimeException("not Available!");
		}
		CartItem cartItem = cartItemDAO.getByUserIdAndProductId(userId, productId);
		if (cartItem == null) {
			cartItem = new CartItem(userId, (long) 0, product);
		}
		cartItem.setQuantity(cartItem.getQuantity() + quantity);
		product.setStock(product.getStock() - quantity);
		productDAO.update(product);
		cartItemDAO.save(cartItem);
	}

	public void removeFromCart(Long userId, Long productId) {
		cartItemDAO.deleteByUserIdAndProductId(userId, productId);
	}

	public void updateCartItemQuantity(long userId, long productId, long newQuantity) {
		CartItem item = cartItemDAO.getByUserIdAndProductId(userId, productId);
		Product product = productDAO.get(productId);
		product.setStock(product.getStock() + item.getQuantity() - newQuantity);
		item.setQuantity(newQuantity);
		productDAO.save(product);
		cartItemDAO.save(item);
	}

	public void clearCart(Long userId) {
		cartItemDAO.deleteByUserId(userId);
	}

}
