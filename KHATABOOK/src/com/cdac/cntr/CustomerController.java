package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Customer;

import com.cdac.dto.User;
import com.cdac.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/prep_customer_add_form.htm",method = RequestMethod.GET)
	public String prepCustomerAddForm(ModelMap map) {
		map.put("customer", new Customer());
		return "customer_add_form";
	}
	
	@RequestMapping(value = "/customer_add.htm",method = RequestMethod.POST)
	public String customerAdd(Customer customer,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		customer.setUserId(userId); 
		customerService.addCustomer(customer);
		return "home";
	}
	
	@RequestMapping(value = "/customer_list.htm",method = RequestMethod.GET)
			public String allCustomers(ModelMap map,HttpSession session) {
				int userId = ((User)session.getAttribute("user")).getUserId();
				List<Customer> li = customerService.selectAll(userId);
				map.put("custList", li);
				return "customer_list";
				}
	
	@RequestMapping(value = "/customer_delete.htm",method = 

			RequestMethod.GET)
				public String customerDelete(@RequestParam int customerId,ModelMap 

			map,HttpSession session) {
					
					customerService.removeCustomer(customerId); 
					
					int userId = ((User)session.getAttribute("user")).getUserId();
					List<Customer> li = customerService.selectAll(userId);
					map.put("custList", li);
					return "customer_list";
				}
	
	@RequestMapping(value = "/customer_update_form.htm",method = RequestMethod.GET)
				public String customerUpdateForm(@RequestParam int customerId,ModelMap map,HttpSession session ) {
				Customer cust = customerService.findCustomer(customerId);
		
					map.put("customer", cust);
					System.out.println(cust);
					session.setAttribute("customerId",customerId);
					return "customer_update_form";
				}
				
				
	@RequestMapping(value = "/customer_update.htm",method = RequestMethod.POST)
				public String customerUpdate(Customer customer,ModelMap map,HttpSession session) {
					
					int userId = ((User)session.getAttribute("user")).getUserId();
					customer.setUserId(userId);
					int customerId =(int)session.getAttribute("customerId");
					customer.setCustomerId(customerId);
					customerService.modifyCustomer(customer);
						
					List<Customer> li = customerService.selectAll(userId);
					map.put("custList", li);
					return "customer_list";
				}

	
	
	
	
}
	


