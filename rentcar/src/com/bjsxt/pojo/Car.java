package com.bjsxt.pojo;

public class Car {
	
	private String carnumber;  //车牌号
	private String cartype; //型号
	private String color; //颜色
	private double price; //价值 
	private double rentprice; //租金
	private double deposit; // 押金
	private String isrenting; //出租状态
	private String cardesc; // 描述
	private String carimg; // 图片
	public String getCarnumber() {
		return carnumber;
	}
	public void setCarnumber(String carnumber) {
		this.carnumber = carnumber;
	}
	public String getCartype() {
		return cartype;
	}
	public void setCartype(String cartype) {
		this.cartype = cartype;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getRentprice() {
		return rentprice;
	}
	public void setRentprice(double rentprice) {
		this.rentprice = rentprice;
	}
	public double getDeposit() {
		return deposit;
	}
	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}
	public String getIsrenting() {
		return isrenting;
	}
	public void setIsrenting(String isrenting) {
		this.isrenting = isrenting;
	}
	public String getCardesc() {
		return cardesc;
	}
	public void setCardesc(String cardesc) {
		this.cardesc = cardesc;
	}
	public String getCarimg() {
		return carimg;
	}
	public void setCarimg(String carimg) {
		this.carimg = carimg;
	}
	public Car(String carnumber, String cartype, String color, double price, double rentprice, double deposit,
			String isrenting, String cardesc, String carimg) {
		super();
		this.carnumber = carnumber;
		this.cartype = cartype;
		this.color = color;
		this.price = price;
		this.rentprice = rentprice;
		this.deposit = deposit;
		this.isrenting = isrenting;
		this.cardesc = cardesc;
		this.carimg = carimg;
	}
	
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Car(String carnumber, String cartype, String color, double price, double rentprice, double deposit,
			String isrenting) {
		super();
		this.carnumber = carnumber;
		this.cartype = cartype;
		this.color = color;
		this.price = price;
		this.rentprice = rentprice;
		this.deposit = deposit;
		this.isrenting = isrenting;
	}
	@Override
	public String toString() {
		return "Car [carnumber=" + carnumber + ", cartype=" + cartype + ", color=" + color + ", price=" + price
				+ ", rentprice=" + rentprice + ", deposit=" + deposit + ", isrenting=" + isrenting + ", cardesc="
				+ cardesc + ", carimg=" + carimg + "]";
	}
	
	
	

}
