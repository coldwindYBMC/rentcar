package com.bjsxt.pojo;

public class User {
     private String username; //登录名 
     private String identity; // 身份证
     private String fullname; // 姓名
     private String sex;  	//性别
     private String address;	//地址
     private String phone;		//联系电话
     private String position;	// 职位
     private String userpwd;  // 用户密码
     private int roleid;  	// 角色id
     private Role role;
     
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", identity=" + identity + ", fullname=" + fullname + ", sex=" + sex
				+ ", address=" + address + ", phone=" + phone + ", position=" + position + ", userpwd=" + userpwd
				+ ", roleid=" + roleid + "]";
	}
	public User(String username, String identity, String fullname, String sex, String address, String phone,
			String position, String userpwd, int roleid) {
		super();
		this.username = username;
		this.identity = identity;
		this.fullname = fullname;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.position = position;
		this.userpwd = userpwd;
		this.roleid = roleid;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
     
     
     
     
     
}
