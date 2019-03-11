package com.bit_trade.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bit_trade.web.domain.CustomerDTO;
import com.bit_trade.web.service.CustomerService;

@SessionAttributes({"cust"})
@Controller
@RequestMapping("/customer")
public class CustomerController {
	static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	@Autowired CustomerDTO customer;
	@Autowired CustomerService customerService;
	@Autowired HttpSession session;
	
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	public String signin(@ModelAttribute CustomerDTO param,HttpSession session ) {
		logger.info("\n --------- customerController {} !! ----------","signin");
		System.out.println("로그인 전 결과 : "+customer.toString());

		customer = customerService.retrieveCustomer(param);
		System.out.println("로그인 후 결과 : "+customer);
		session.setAttribute("cust", customer);
		if(customer != null) session.setAttribute("cust", customer);
		return (customer != null) ? 
				"public:customer/detail.tiles"
					:
				"public:home/main.tiles";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute CustomerDTO param) {
		logger.info("\n --------- customerController {} !! ----------","update");
		System.out.println("=========1???===========");
		customerService.modifyCustomer(param);
		System.out.println("=========2???===========");
		customer = (CustomerDTO) session.getAttribute("customer");
		customer = param;
		return "public:customer/detail.tiles";
		
	}
}
