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
	@Autowired CustomerDTO cus;
	@Autowired CustomerService customerService;
	
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	public String signin(@ModelAttribute CustomerDTO customer,HttpSession session ) {
		logger.info("\n --------- customerController {} !! ----------","signin");
		System.out.println("로그인 전 결과 : "+customer.toString());

		cus = customerService.retrieveCustomer(customer);
		System.out.println("로그인 후 결과 : "+cus);
		session.setAttribute("cust", cus);
		return (cus != null) ? 
				"public:customer/detail.tiles"
					:
				"public:category/main.tiles";
	}
}
