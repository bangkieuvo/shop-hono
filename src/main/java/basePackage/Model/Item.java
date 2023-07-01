package basePackage.Model;

public class Item {
	private long itemID;
	private String itemName;
	private double itemCost;
	private long quantity;
	private long productQuantity;
	private String itemDescription;

	public Item() {

	}

	public Item(long itemID, long quantity) {
		this.itemID = itemID;
		this.quantity = quantity;
	}

	public Item(long itemID, String itemName, double itemCost, long quantity) {
		this.itemID = itemID;
		this.itemName = itemName;
		this.itemCost = itemCost;
		this.quantity = quantity;
	}

	public long getItemID() {
		return itemID;
	}

	public void setItemID(long itemID) {
		this.itemID = itemID;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public double getItemCost() {
		return itemCost;
	}

	public void setItemCost(double itemCost) {
		this.itemCost = itemCost;
	}

	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

	public long getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(long productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	@Override
	public boolean equals(Object obj) {
		Item that = (Item) obj;
		if (this.getClass() != obj.getClass()) {
			return false;
		}
		return (this.getItemID() == that.getItemID());
	}
}
