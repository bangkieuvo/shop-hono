package basePackage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;

import org.springframework.web.bind.annotation.RequestMapping;

public class Tool {
	public static String nameObject(String s) {
		char c = s.charAt(0);
		int k = c;
		k = k + 32;
		c = (char) k;
		String res = "";
		res = res + c;
		for (int i = 1; i < s.length(); i++) {
			res = res + s.charAt(i);
		}
		return res;
	}

	public static String generateDAO(String entityName) {
		String res = "";
		String ob = nameObject(entityName);
		res += "@Repository(value = \"" + entityName + "DAO\")\n" + "public class " + entityName + "DAO {\n"
				+ "	@Autowired\n" + "	private SessionFactory sessionFactory;\n" + "	public void save(" + entityName
				+ " " + ob + ") {\n" + "		Session session = this.sessionFactory.getCurrentSession();\n"
				+ "		session.save(" + ob + ");\n" + "	}\n" + "	public void update(" + entityName + " " + ob
				+ ") {\n" + "		Session session = this.sessionFactory.getCurrentSession();\n"
				+ "		session.update(" + ob + ");\n" + "	}\n" + "	public " + entityName + " findById(int id) {\n"
				+ "		Session session = this.sessionFactory.getCurrentSession();\n" + "		" + entityName + " "
				+ ob + " = session.find(" + entityName + ".class,id);\n" + "		return " + ob + ";\n" + "	}\n"
				+ "	public void remove(" + entityName + " " + ob + ") {\n"
				+ "		Session session = this.sessionFactory.getCurrentSession();\n" + "		session.remove(" + ob
				+ ");\n" + "	}\n" + "	public List<" + entityName + "> findAll() {\n"
				+ "	    Session session = this.sessionFactory.getCurrentSession();\n" + "	    List<" + entityName
				+ "> list" + entityName + " = session.createQuery(\"FROM " + entityName + "\", " + entityName
				+ ".class).getResultList();\n" + "	    return list" + entityName + ";\n" + "	  }\n" + "}\n" + "";
		return res;
	}

	public static String generateService(String entityName) {
		String res = "";
		String ob = nameObject(entityName);
		res += "@Service\n" + "@Transactional\n" + "public class " + entityName + "Service {\n" + "	@Autowired\n"
				+ "	private " + entityName + "DAO " + ob + "DAO;\n" + "\n" + "	public void save(" + entityName + " "
				+ ob + ") {\n" + "		" + ob + "DAO.save(" + ob + ");\n" + "	}\n" + "\n" + "	public void update("
				+ entityName + " " + ob + ") {\n" + "		" + ob + "DAO.update(" + ob + ");\n" + "	}\n" + "\n"
				+ "	public " + entityName + " findById(int id) {\n" + "		return " + ob + "DAO.findById(id);\n"
				+ "	}\n" + "	\n" + "	public void remove(" + entityName + " " + ob + ") {\n" + "		" + ob
				+ "DAO.remove(" + ob + ");\n" + "	}\n" + "	\n" + "	public List<" + entityName + "> findAll() {\n"
				+ "		return " + ob + "DAO.findAll();\n" + "	}\n" + "}\n" + "";
		return res;
	}

	public static void makeDAOFile(String entityName) throws IOException {
		String url = System.getProperty("user.dir") + "/src/main/java/basePackage/DAO/" + entityName + "DAO.java";
		String content = "package basePackage.DAO;\n" + "\n" + "import java.util.List;\n" + "\n"
				+ "import org.hibernate.Session;\n" + "import org.hibernate.SessionFactory;\n"
				+ "import org.springframework.beans.factory.annotation.Autowired;\n"
				+ "import org.springframework.stereotype.Repository;\n" + "\n" + "import basePackage.Entity."
				+ entityName + ";\n" + "\n";
		content = content + generateDAO(entityName);
		File file = new File(url);
		FileOutputStream stream = new FileOutputStream(file);
		stream.write(content.getBytes());
		stream.close();
		System.out.println("Make file " + entityName + "DAO.java done!");
	}

	public static void makeServiceFile(String entityName) throws IOException {
		String url = System.getProperty("user.dir") + "/src/main/java/basePackage/Service/" + entityName
				+ "Service.java";
		String content = "package basePackage.Service;\n" + "\n" + "import java.util.List;\n" + "\n"
				+ "import org.springframework.beans.factory.annotation.Autowired;\n"
				+ "import org.springframework.stereotype.Service;\n"
				+ "import org.springframework.transaction.annotation.Transactional;\n" + "\n"
				+ "import basePackage.DAO." + entityName + "DAO;\n" + "import basePackage.Entity." + entityName + ";"
				+ "\n" + "\n";
		content = content + generateService(entityName);
		File file = new File(url);
		FileOutputStream stream = new FileOutputStream(file);
		stream.write(content.getBytes());
		System.out.println("Make file " + entityName + "Service.java done!");
	}

	public static String generateMapping(String page) {
		return "@RequestMapping(value = {\"" + page + "\"})\n" + "	public String " + page + "() {\n"
				+ "		return \"" + page + "\";\n" + "	}\n";
	}

	public static void main(String[] args) throws IOException {
		String[] list = { "cart", "index", "login", "myAccount", "payCart", "productDetail", "shop", "wishlist" };
		for(String s:list) {
			System.out.println(generateMapping(s));
		}
	}
}
