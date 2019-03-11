package com.bit_trade.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit_trade.web.domain.CustomerDTO;
import com.bit_trade.web.service.CustomerService;

@SessionAttributes({"cust"})
@Controller
@RequestMapping("/customer")
public class CustomerController {
	static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	@Autowired CustomerDTO customer;
	@Autowired CustomerService customerService;
	
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	public String signin(@ModelAttribute CustomerDTO param,Model session ) { // 지역변수 Model (HttpSession이 값을 오래 물고? 있음)
		logger.info("\n --------- customerController {} !! ----------","signin");
		System.out.println("로그인 전 결과 : "+customer);

		customer = customerService.retrieveCustomer(param);
		System.out.println("로그인 후 결과 : "+customer);
		session.addAttribute("cust", customer);
		if(customer != null) session.addAttribute("cust", customer);
		return (customer != null) ? 
				"public:customer/detail.tiles"
					:
				"public:home/main.tiles";
	}
	
	@RequestMapping(value="/detail")
	public String detail(@RequestParam("customerID")String customerID, Model model) { 
		logger.info("\n --------- customerController {} !! ----------","detail");
		customer.setCustomerID(customerID);
		customer = customerService.retrieveCustomer(customer);
		model.addAttribute("cust",customer);
		return "public:customer/detail.tiles";
		
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute CustomerDTO param,Model session, RedirectAttributes red) {
		logger.info("\n --------- customerController {} !! ----------","update");
		System.out.println("수정 전 : "+ session.addAttribute("cust"));
		customerService.modifyCustomer(param);
		session.addAttribute("cust",customer = customerService.retrieveCustomer(param));
		red.addAttribute("customerID",param.getCustomerID());
		System.out.println("param id : "+param.getCustomerID());
		System.out.println("수정 후 결과 : "+session.addAttribute("cust"));
		
		return "redirect:/customer/detail"; //내장 
		
	}
}
