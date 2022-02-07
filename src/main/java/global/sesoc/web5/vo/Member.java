package global.sesoc.web5.vo;

/**
 * 회원정보 VO
 */
public class Member {
	String id;				//회원ID
	String password;		//비밀번호
	String name;			//이름
	String phone;			//전화번호
	String address;			//주소
	String email;			//이메일주소
	
	public Member() {
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", address="
				+ address + ", email=" + email + "]";
	}
}
