package Main;

import java.util.ArrayList;
import java.util.List;

import basePackage.Entity.Cart;
import basePackage.Entity.WishList;
import basePackage.Factory.ItemFactory;
import basePackage.Model.Item;

public class Main {
	public static void main(String[] args) {
		Cart cart = new Cart();
		cart.add(new Item(4,2));
		cart.add(new Item(6,2));
		cart.add(new Item(4,3));
		System.out.println(cart.getListItem_Data());
		cart.getListItem().remove(new Item(4,0));
		cart.updateListItem_Data();
		System.out.println(cart.getListItem_Data());
		
	}
}
