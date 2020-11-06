package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Customer;

@Repository
public class CustomerDaoImple implements CustomerDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertCustomer(Customer customer) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();

				session.save(customer);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}

		});
	}

	@Override
	public void deleteCustomer(int customerId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Customer(customerId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		

	}

	@Override
	public Customer selectCustomer(int customerId) {
		Customer customer = hibernateTemplate.execute(new HibernateCallback<Customer>() {

			@Override
			public Customer doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Customer cu = (Customer)session.get(Customer.class,customerId);
				tr.commit();
				session.flush();
				session.close();
				return cu;
			}
		});
		return customer;
	}

	@Override
	public void updateCustomer(Customer customer) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.update(customer);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});

		
	}

	@Override
	public List<Customer> selectAll(int userId) {
		List<Customer> custList = hibernateTemplate.execute(new HibernateCallback<List<Customer>>() {

			@Override
			public List<Customer> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Customer where userId = ?");
				q.setInteger(0, userId);
				List<Customer> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		

		return custList;
	}

}
