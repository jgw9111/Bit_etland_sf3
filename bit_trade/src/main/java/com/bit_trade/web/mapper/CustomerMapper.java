package com.bit_trade.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.bit_trade.web.domain.CustomerDTO;
import com.bit_trade.web.proxy.Pagination;
import com.bit_trade.web.proxy.Proxy;
@Component
public interface CustomerMapper {
	public void insertCustomer(CustomerDTO cus);
	public List<CustomerDTO> selectCustomersList(Proxy pxy);
	public List<CustomerDTO> selectCustomers(Proxy pxy);
	public CustomerDTO selectCustomer(CustomerDTO cus);
	public int countCustomers(Proxy pxy);
	public boolean existCustomerId(CustomerDTO cus);
	public Map<String, Object> selectProfile(Proxy pxy);
	public void deleteCustomer(CustomerDTO cus);
	public void updateCustomer(CustomerDTO cus);
	public Map<String, Object> selectPhone(Proxy pxy);
	public CustomerDTO selectCustomerOne(CustomerDTO cus);
	/*public void updateImage(CustomerDTO cus);*/
}
