package basePackage.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "account")
public class Account {
	@Id
	@Column(name = "customerID")
	private long customerID;

	@Column(name = "_account")
	private String account;

	@Column(name = "hashedPassword")
	private int hashedPassword;

	@Column(name = "firstName")
	private String firstName;

	@Column(name = "middleName")
	private String middleName;

	@Column(name = "lastName")
	private String lastName;

 
//	public Account(int customerID, String account, int hashedPassword, String firstName, String middleName,
//			String lastName) {
//		super();
//		this.customerID = customerID;
//		this.account = account;
//		this.hashedPassword = hashedPassword;
//		this.firstName = firstName;
//		this.middleName = middleName;
//		this.lastName = lastName;
//	}

	public long getCustomerID() {
		return customerID;
	}

	public void setCustomerID(long customerID) {
		this.customerID = customerID;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public int getHashedPassword() {
		return hashedPassword;
	}

	public void setHashedPassword(int hashedPassword) {
		this.hashedPassword = hashedPassword;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}
