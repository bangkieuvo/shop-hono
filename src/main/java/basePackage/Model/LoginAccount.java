package basePackage.Model;

public class LoginAccount {
	private String username;
	private int hashedPassword;
	public LoginAccount(String username, int hashedPassword) {
		this.username = username;
		this.hashedPassword = hashedPassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getHashedPassword() {
		return hashedPassword;
	}
	public void setHashedPassword(int hashedPassword) {
		this.hashedPassword = hashedPassword;
	}
	
}
