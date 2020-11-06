package com.cdac.service;

import java.util.List;

import com.cdac.dto.Customer;

public interface CustomerService {
	void addCustomer(Customer customer);
	void removeCustomer(int customerId);
	Customer findCustomer(int customerId);
	void modifyCustomer(Customer customer);
	List<Customer> selectAll(int userId);
}
