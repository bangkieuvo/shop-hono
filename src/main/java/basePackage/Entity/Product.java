package basePackage.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@Column(name = "productID")
	private long productID;

	@Column(name = "productName")
	private String productName;

	@Column(name = "productCost")
	private double productCost;

	@Column(name = "quantity")
	private long quantity;

	@Column(name = "productDescription")
	private String description;

	public Product() {
	}

	public Product(long productID, String productName, double productCost, long quantity, String description) {
		this.productID = productID;
		this.productName = productName;
		this.productCost = productCost;
		this.quantity = quantity;
		this.description = description;
	}

	public Product(long productID, long quantity) {
		this.productID = productID;
		this.quantity = quantity;
	}

	public long getProductID() {
		return productID;
	}

	public void setProductID(long productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getProductCost() {
		return productCost;
	}

	public void setProductCost(double productCost) {
		this.productCost = productCost;
	}

	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
