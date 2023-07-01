package basePackage.Factory;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class FactoryProperties {
	public static String getProperties (String name, String attribute) {
		Properties prop = new Properties();
	    InputStream input = null;
	    try {
			input = new FileInputStream(pathFactory.projectPath + "/src/main/webapp/resources/properties/"+name+".properties");
			prop.load(input);
			String value = prop.getProperty(attribute);
			return  value;
			
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void main(String[] args) {
		
	}
}
