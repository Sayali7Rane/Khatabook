package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {
	@Id
	@Column(name = "customer_id")
	@GeneratedValue
	private int customerId;
	@Column(name = "cust_name")
	private String customerName;
	@Column(name = "mobile_no")
	private String mobileNo;
	@Column(name = "item_name")
	private String itemName;
	@Column(name = "pur_date")
	private String purchaseDate;
	
	private float price;

	private float recivedMoney;

	private float remainingMoney;
	private int userId;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Customer(int customerId) {
		super();
		this.customerId = customerId;
	}

	
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getRecivedMoney() {
		return recivedMoney;
	}
	public void setRecivedMoney(float recivedMoney) {
		this.recivedMoney = recivedMoney;
	}
	public float getRemainingMoney() {
		return remainingMoney;
	}
	public void setRemainingMoney(float remainingMoney) {
		this.remainingMoney = remainingMoney;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", mobileNo=" + mobileNo
				+ ", itemName=" + itemName + ", purchaseDate=" + purchaseDate + ", price=" + price + ", recivedMoney="
				+ recivedMoney + ", remainingMoney=" + remainingMoney + ", userId=" + userId + "]";
	}

	
	
	
	
}
