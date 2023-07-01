package basePackage.Model;

public class LoginAccount {
	private String account;
	private String password;

	public LoginAccount() {
		this.account = "";
		this.password = "";
	}

	public LoginAccount(String account, String password) {
		super();
		this.account = account;
		this.password = password;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
