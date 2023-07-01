package basePackage.Factory;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Generator {
	private static long generateID(String name) throws IOException {
		long res = 0 ;
		String lastestID = FactoryProperties.getProperties(name, "id");
		for(int i=0; i<lastestID.length();i++) {
			res = res*10 + lastestID.charAt(i)-48;
		}
		res++;
		File file = new File(pathFactory.projectPath + "/src/main/webapp/resources/properties/" + name + ".properties");
		FileOutputStream fileOutputStream = new FileOutputStream(file);
		String content = "id = "+res;
		fileOutputStream.write(content.getBytes());
		fileOutputStream.close();
		return res;
	}
	public static long generateCustomerID() throws IOException {
		return generateID("customerID");
	}
	public static long generateCartID() throws IOException {
		return generateID("cartID");
	}
	public static void main(String[] args) throws IOException {
		System.out.println(generateCustomerID());
	}
}
