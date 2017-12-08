package com.bjsxt.pojo;
/**
 * 客户
 * @author Administrator
 *
 */
public class Customer {
	private String identity; //身份证
	private String custname; // 客户姓名
	private String sex; // 性别
	private String address; //地址 
	private String phone ;  // 电话 
	private String career; // 职业 
	private String custpwd; // 客户密码
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
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
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getCustpwd() {
		return custpwd;
	}
	public void setCustpwd(String custpwd) {
		this.custpwd = custpwd;
	}
	@Override
	public String toString() {
		return "Customer [identity=" + identity + ", custname=" + custname + ", sex=" + sex + ", address=" + address
				+ ", phone=" + phone + ", career=" + career + ", custpwd=" + custpwd + "]";
	}
	public Customer(String identity, String custname, String sex, String address, String phone, String career,
			String custpwd) {
		super();
		this.identity = identity;
		this.custname = custname;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.career = career;
		this.custpwd = custpwd;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
