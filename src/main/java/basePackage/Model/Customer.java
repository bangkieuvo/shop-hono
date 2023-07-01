package basePackage.Model;

import basePackage.Entity.Cart;
import basePackage.Entity.WishList;
import basePackage.Factory.ItemFactory;

public class Customer {
	private long customerID;
	private String name;
	private Cart cart;
	private WishList wishList;

	public long getCustomerID() {
		return customerID;
	}

	public void setCustomerID(long customerID) {
		this.customerID = customerID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public WishList getWishList() {
		return wishList;
	}

	public void setWishList(WishList wishList) {
		this.wishList = wishList;
	}

	public boolean addToCart(long productID, long quantity) {
		if (quantity!= 0||ItemFactory.checkItem(productID, quantity)) {
			this.cart.add(productID, quantity);
			return true;
		}
		return false;
	}

	public boolean addToWishList(long productID) {
		if (ItemFactory.checkItem(productID, 0)) {
			this.wishList.add(productID);
			return true;
		}
		return false;
	}
}
