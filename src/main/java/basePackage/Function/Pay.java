package basePackage.Function;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import basePackage.Entity.Revenue;
import basePackage.Model.Item;
import basePackage.Service.AccountService;
import basePackage.Service.CartService;
import basePackage.Service.ProductService;
import basePackage.Service.RevenueService;
import basePackage.Service.WishListService;

@Component
public class Pay {
	private static RevenueService revenueService;

	@Autowired
	private RevenueService revenueService2;

	@PostConstruct
	private void factoryInit() {
		revenueService = revenueService2;
	}

	public static void pay(List<Item> list) {
		for (Item item : list) {
			Revenue revenue = revenueService.findByProductID(item.getItemID());
			revenue.add(item.getItemCost() * item.getQuantity());
			revenueService.update(revenue);
		}
	}
}
