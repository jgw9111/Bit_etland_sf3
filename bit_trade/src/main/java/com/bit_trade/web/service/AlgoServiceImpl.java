package com.bit_trade.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class AlgoServiceImpl implements AlgoService {

	@Override
	public String arithmeticSequence(Map<?, ?> param) {
		String startNum = (String) param.get("startNum"), 
				endNum = (String) param.get("endNum"),
				diff = (String) param.get("diff"),
				result="";
		
		return result;
	}

}
