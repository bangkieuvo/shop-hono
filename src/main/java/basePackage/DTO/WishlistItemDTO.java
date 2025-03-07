package basePackage.DTO;

import basePackage.Entity.WishlistItem;

public class WishlistItemDTO {
	private long productId;
	private String productName;
	private double productPrice;
	private String productDescription;

	public WishlistItemDTO() {
	}

	public WishlistItemDTO(WishlistItem wishlistItem) {

		this.productId = wishlistItem.getProduct().getId();
		this.productName = wishlistItem.getProduct().getName();
		this.productPrice = wishlistItem.getProduct().getPrice();
		this.productDescription = wishlistItem.getProduct().getDescription();
	}

	public WishlistItemDTO(long productId, String productName, double productPrice,
			String productDescription) {
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDescription = productDescription;
	}

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
}
