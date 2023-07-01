package basePackage.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "revenue")
public class Revenue {
	@Id
	@Column(name = "productID")
	private long productID;

	@Column(name = "revenue")
	private double revenue;

	public Revenue() {

	}

	public Revenue(long productID, double revenue) {
		this.productID = productID;
		this.revenue = revenue;
	}

	public long getProductID() {
		return productID;
	}

	public void setProductID(long productID) {
		this.productID = productID;
	}

	public double getRevenue() {
		return revenue;
	}

	private void setRevenue(double revenue) {
		this.revenue = revenue;
	}

	public void add(double money) {
		this.setRevenue(revenue + money);
	}
}
