package basePackage.DTO;

public class UserDTO {
	private long id;
	private String username;
	private String email;
	private UserInfoDTO userInfo;

	private UserDTO(Builder builder) {
		this.id = builder.id;
		this.username = builder.username;
		this.email = builder.email;
		this.userInfo = builder.userInfoDTO;
	}

	public static class Builder {
		private long id;
		private String username;
		private String email;
		private UserInfoDTO userInfoDTO;

		public Builder(long id, String username, String email) {
			this.id = id;
			this.username = username;
			this.email = email;
		}

		public Builder setUserInfo(UserInfoDTO userInfoDTO) {
			this.userInfoDTO = userInfoDTO;
			return this;
		}

		public UserDTO build() {
			return new UserDTO(this);
		}
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserInfoDTO getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfoDTO userInfo) {
		this.userInfo = userInfo;
	}

}
