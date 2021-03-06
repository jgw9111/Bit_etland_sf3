package com.bit_trade.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit_trade.web.domain.CustomerDTO;
import com.bit_trade.web.mapper.CustomerMapper;
import com.bit_trade.web.proxy.Proxy;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired CustomerMapper customerMapper;
	@Override
	public void joinCustomer(CustomerDTO cus) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CustomerDTO> bringCustomersList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CustomerDTO> retrieveCustomers(Proxy pxy) {
		
		return null;
	}

	@Override
	public CustomerDTO retrieveCustomer(CustomerDTO cus) {
		return customerMapper.selectCustomer(cus);
	}

	@Override
	public int countCustomers(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existCustomerId(CustomerDTO cus) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyCustomer(CustomerDTO cus) {
		customerMapper.updateCustomer(cus);
	}

	@Override
	public Map<String, Object> fileUpload(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeCustomer(CustomerDTO cus) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> retreivePhone(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CustomerDTO retreiveCustomerOne(CustomerDTO cus) {
		// TODO Auto-generated method stub
		return null;
	}

}
