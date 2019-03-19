package com.bit_trade.web.controller;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit_trade.web.service.AlgoService;

@Controller
@RequestMapping("/algo")
public class AlgoController {
	static final Logger logger = LoggerFactory.getLogger(AlgoController.class);
	@Autowired AlgoService algoService;
	@RequestMapping(value="/seq/{queNum}",method=RequestMethod.POST)
	@ResponseBody  //request,response
	public Map<String,Object> sequnce(@PathVariable String queNum,@RequestBody  Map<String,Object> param){ // RequestBody -> 무조건 post 방식
		logger.info("\n --------- AlgoController {} !! ----------","sequnce()");
		System.out.println("넘어온 문제 번호 :: "+queNum);

		Map<String,Object> map = new HashMap<String,Object>();
		String start = (String) param.get("start");
		String end = (String) param.get("end");
		String diff = (String) param.get("diff");
		map.put("startNum",start);
		map.put("endNum",end);
		map.put("diff",diff);
		String result = algoService.arithmeticSequence(map);
		map.put("result",result);
		return map;
	}
}
