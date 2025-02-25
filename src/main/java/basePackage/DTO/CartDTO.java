package basePackage.DTO;

import java.util.ArrayList;
import java.util.List;


public class CartDTO {
	private long userId;
	private List<CartItemDTO> cartItems;
	private double totalPrice;
	public CartDTO(long userId,List<CartItemDTO> items) {
        this.userId = userId;
        this.cartItems = items;
        updateTotalPrice();
    }
	public void updateTotalPrice() {
		double result = 0;
		for(CartItemDTO item : cartItems) {
			result += item.getPrice() * item.getQuantity();
		}
		this.totalPrice = result;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public List<CartItemDTO> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItemDTO> cartItems) {
		this.cartItems = cartItems;
	}
	public double getTotalPrice() {
		return totalPrice;
	}

}
