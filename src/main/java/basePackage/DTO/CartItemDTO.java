package basePackage.DTO;

import basePackage.Entity.CartItem;

public class CartItemDTO {
    private Long productId;
    private String productName;
    private long quantity;
    private double price;
    private String description;
    private long stock;
    public CartItemDTO(CartItem cartItem) {
        this.productId = cartItem.getProduct().getId();
        this.productName = cartItem.getProduct().getName();
        this.quantity = cartItem.getQuantity();
        this.price = cartItem.getProduct().getPrice();
        this.description = cartItem.getProduct().getDescription();
        this.stock = cartItem.getProduct().getStock();
    }
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public long getStock() {
		return stock;
	}
	public void setStock(long stock) {
		this.stock = stock;
	}
    
}
