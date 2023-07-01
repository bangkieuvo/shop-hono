package basePackage.Factory;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import basePackage.Entity.Product;
import basePackage.Model.Customer;
import basePackage.Service.ProductService;

@Component
public class ProductFactory {

	private static ProductService productService;
	@Autowired
	private ProductService productService2;

	@PostConstruct
	private void init() {
		productService = productService2;
	}

	public static List<Product> getAllProduct() {
		return productService.findAll();
	}

	public static List<Product> getListProduct(long page) {
		List<Product> list = new ArrayList<Product>();
		List<Product> listAllProduct = getAllProduct();

		for (long i = (page - 1) * 12; (i < 12 * page)&&(i < listAllProduct.size()); i++) {
			list.add(listAllProduct.get((int) i));
		}

		return list;
	}

	public static Product getProduct(long productID) {
		return productService.findByProductID(productID);
	}

	public static void save(Product product) {
		productService.save(product);
	}

	public static void update(Product product) {
		productService.update(product);
	}

	public static List<Product> getBestsellerList() throws IOException {
		List<Product> list = new ArrayList<Product>();
		File file = new File(pathFactory.projectPath + "/src/main/webapp/resources/properties/bestSeller.properties");
		FileInputStream fileInputStream = new FileInputStream(file);
		int c = fileInputStream.read();
		String prperties = "";
		while (c != -1) {
			prperties += (char) c;
			c = fileInputStream.read();
		}
		String[] IDs = prperties.split(" ");
		for (String id : IDs) {
			if (id != "") {
				Product product = getProduct(Integer.parseInt(id));
				if (product.getQuantity() != 0) {
					list.add(product);
				}
			}
		}
		fileInputStream.close();
		return list;
	}

	public static long getProductCount() {
		return productService.findAll().size();
	}
}
