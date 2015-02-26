package vo;

import org.springframework.web.multipart.MultipartFile;

public class SettingEmpVO {
	private int pay, dept_id, pos_id;
	private String id, password, passwordch, name, address, position, tel, email, up_profile_img;
	private MultipartFile uprofile_img;
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getPos_id() {
		return pos_id;
	}
	public void setPos_id(int pos_id) {
		this.pos_id = pos_id;
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
	public String getPasswordch() {
		return passwordch;
	}
	public void setPasswordch(String passwordch) {
		this.passwordch = passwordch;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUp_profile_img() {
		return up_profile_img;
	}
	public void setUp_profile_img(String up_profile_img) {
		this.up_profile_img = up_profile_img;
	}
	public MultipartFile getUprofile_img() {
		return uprofile_img;
	}
	public void setUprofile_img(MultipartFile uprofile_img) {
		this.uprofile_img = uprofile_img;
	}
	
	
	
}
