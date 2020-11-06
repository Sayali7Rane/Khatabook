package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.CustomerDao;
import com.cdac.dto.Customer;

@Service
public class CustomerServiceImple implements CustomerService{
	
	@Autowired
	private CustomerDao customerDao;

	@Override
	public void addCustomer(Customer customer) {
		customerDao.insertCustomer(customer);
		
	}

	@Override
	public void removeCustomer(int customerId) {
		customerDao.deleteCustomer(customerId);
		
	}

	@Override
	public Customer findCustomer(int customerId) {
		return customerDao.selectCustomer(customerId);
		
	}

	@Override
	public void modifyCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
		
	}

	@Override
	public List<Customer> selectAll(int userId) {
		return customerDao.selectAll(userId);
		
	}

}
