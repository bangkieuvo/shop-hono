package basePackage.Entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import basePackage.Factory.ItemFactory;
import basePackage.Model.Item;

@Entity
@Table(name = "cart")
public class Cart {
	@Id
	@Column(name = "customerID")
	private long customerID;

	@Column(name = "listItem_Data")
	private String listItem_Data;

	@Transient
	private List<Item> listItem;

	public Cart() {
		this.listItem = new ArrayList<Item>();
		this.listItem_Data = "";
	}

	public Cart(long customerID) {
		this.customerID = customerID;
		this.listItem = new ArrayList<Item>();
		this.listItem_Data = "";
	}

	public Cart(long customerID, String listItem_Data, List<Item> listItem) {
		this.customerID = customerID;
		this.listItem_Data = listItem_Data;
		this.listItem = listItem;
	}

	public long getCustomerID() {
		return customerID;
	}

	public void setCustomerID(long customerID) {
		this.customerID = customerID;
	}

	public String getListItem_Data() {
		return listItem_Data;
	}

	public void setListItem_Data(String listItem_Data) {
		this.listItem_Data = listItem_Data;
		updateListItem();
	}

	public List<Item> getListItem() {
		return listItem;
	}

	public void setListItem(List<Item> listItem) {
		this.listItem = listItem;
		this.updateListItem_Data();
	}

	public void updateListItem_Data() {
		String data = "";
		for (Item item : this.listItem) {
			if (item.getQuantity() != 0) {
				data += item.getItemID();
				data += ":";
				data += item.getQuantity();
				data += " ";
			}
		}
		this.listItem_Data = data;
	}

	public void updateListItem() {
		String data = getListItem_Data();
		if (data == null || data.equals("")) {
			return;
		}
		String[] items = data.split(" ");
		for (String item : items) {
			String[] info = item.split(":");
			if (info[1] != "0")
				this.add(ItemFactory.getItem(Long.parseLong(info[0]), Long.parseLong(info[1])));
		}
	}

	public void add(Item item) {
		if (this.listItem.contains(item)) {
			int index = this.listItem.indexOf(item);
			long oldQuantity = this.listItem.get(index).getQuantity();
			long newQuantity = oldQuantity + item.getQuantity();
			this.listItem.get(index).setQuantity(newQuantity);
		} else {
			this.listItem.add(item);
		}
		this.updateListItem_Data();
	}

	public void add(long itemID, long quantity) {
		if (quantity == 0)
			return;
		this.add(ItemFactory.getItemToAdd(itemID, quantity));
		this.updateListItem_Data();
	}
	
	public Item findItem(long itemID) {
		for(Item item : listItem) {
			if(item.getItemID() == itemID)
				return item;
		}
		return null;
	}
	
	public double getSubTotal() {
		double subToTal = 0;
		for (Item item : listItem) {
			subToTal += item.getItemCost() * item.getQuantity();
		}
		return subToTal;
	}
}
