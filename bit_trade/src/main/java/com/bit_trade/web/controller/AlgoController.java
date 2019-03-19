package com.bit_trade.web.controller;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit_trade.web.service.AlgoService;

@Controller
@RequestMapping("/algo")
public class AlgoController {
	static final Logger logger = LoggerFactory.getLogger(AlgoController.class);
	@Autowired AlgoService algoService;
	
	@RequestMapping("/seq/{queNum}")
	@ResponseBody //request,response
	public Map<String,Object> sequnce(@PathVariable String queNum){
		logger.info("\n --------- AlgoController {} !! ----------","sequnce()");
		System.out.println("넘어온 문제 번호 :: "+queNum);
		Map<String,Object> map = new HashMap<String,Object>();
		String startNum = "1";
		String endNum = "100";
		String diff = "1";
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		map.put("diff",diff);
		String result = algoService.arithmeticSequence(map);
		map.put("result",result);
		return map;
	}
}
