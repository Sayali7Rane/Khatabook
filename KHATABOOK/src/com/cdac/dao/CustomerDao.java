package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Customer;

public interface CustomerDao {
	void insertCustomer(Customer customer);
	void deleteCustomer(int customerId);
	Customer selectCustomer(int customerId);
	void updateCustomer(Customer customer);
	List<Customer> selectAll(int userId);
}
