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
@Table(name = "wishList")
public class WishList {
	@Id
	@Column(name = "customerID")
	private long customerID;
	@Column(name = "listItem_Data")
	private String listItem_Data;
	@Transient
	private List<Item> listItem;

	public WishList() {
		this.listItem = new ArrayList<Item>();
		this.listItem_Data = "";
	}

	public WishList(long customerID) {
		this.customerID = customerID;
		this.listItem = new ArrayList<Item>();
		this.listItem_Data ="";
	}

	public WishList(long customerID, String listItem_Data, List<Item> listItem) {
		super();
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
		updateListItem_Data();
	}

	public void updateListItem_Data() {
		String data = "";
		for (Item item : this.listItem) {
			data += item.getItemID();
			data += " ";
		}
		this.listItem_Data = data;
	}

	public void updateListItem() {
		String data = getListItem_Data();
		if(data.equals("")) {
			return;
		}
		String[] items = data.split(" ");
		for (String item : items) {
			this.add(ItemFactory.getItem(Long.parseLong(item), 0));
		}
	}

	public void add(Item item) {
		if (this.listItem.contains(item)) {
			return;
		} else {
			this.listItem.add(item);
		}
		this.updateListItem_Data();
	}

	public void add(long itemID) {
		this.add(ItemFactory.getItem(itemID));
	}
}
