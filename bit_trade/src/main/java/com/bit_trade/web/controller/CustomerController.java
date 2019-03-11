package com.bit_trade.web.controller;

import javax.servlet.http.HttpServletRequest;
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
import com.bit_trade.web.proxy.ContextProxy;
import com.bit_trade.web.service.CustomerService;

@SessionAttributes({"cust"})
@Controller
@RequestMapping("/customer")
public class CustomerController {
	static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	@Autowired CustomerDTO customer;
	@Autowired CustomerService customerService;
	@Autowired HttpSession session;
	@Autowired ContextProxy pxy;
	
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	public String signin(@ModelAttribute CustomerDTO param,HttpSession session ) {
		logger.info("\n --------- customerController {} !! ----------","signin");
		System.out.println("로그인 전 결과 : "+customer);

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
		System.out.println("수정 전 : "+ session.getAttribute("cust"));
		customerService.modifyCustomer(param);
		session.invalidate(); // 기존에 담아둔거 정리
		pxy.setContext();
		session.setAttribute("cust", customerService.retrieveCustomer(param));
		System.out.println("수정 후 결과 : "+session.getAttribute("cust"));
		
		return "public:customer/detail.tiles";
		
	}
}
