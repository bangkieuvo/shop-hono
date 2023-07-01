package basePackage.Factory;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import basePackage.Entity.Cart;
import basePackage.Entity.Product;
import basePackage.Model.Customer;
import basePackage.Model.Item;
import basePackage.Service.ProductService;

@Component
public class ItemFactory {
	private static ProductService productService;
	@Autowired
	private ProductService productService2;

	@PostConstruct
	private void init() {
		productService = productService2;
	}

	public static boolean checkItem(long productID, long quantity) {
		Product product = productService.findByProductID(productID);
		if (product.getQuantity() >= quantity) {
			return true;
		}
		return false;
	}

	public static Item getItem(long productID, long quantity) {
		Product product = productService.findByProductID(productID);
		Item item = new Item(productID, quantity);
		item.setProductQuantity(product.getQuantity());
		item.setItemName(product.getProductName());
		item.setItemCost(product.getProductCost());
		item.setItemDescription(product.getDescription());
		return item;
	}

	public static Item getItem(long productID) {
		Product product = productService.findByProductID(productID);
		Item item = new Item(productID, 0);
		item.setItemName(product.getProductName());
		item.setItemCost(product.getProductCost());
		item.setProductQuantity(product.getQuantity());
		item.setItemDescription(product.getDescription());
		return item;
	}

	public static Item getItemToAdd(long productID, long quantity) {
		Product product = productService.findByProductID(productID);
		Item item = new Item(productID, quantity);
		item.setItemName(product.getProductName());
		item.setItemCost(product.getProductCost());
		item.setItemDescription(product.getDescription());
		
		product.setQuantity(product.getQuantity() - quantity);
		
		item.setProductQuantity(product.getQuantity());
		productService.update(product);
		return item;
	}

	
}
