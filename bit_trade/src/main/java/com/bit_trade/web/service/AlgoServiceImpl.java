package com.bit_trade.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class AlgoServiceImpl implements AlgoService {

	@Override
	public String arithmeticSequence(Map<?,?> param) {
		String start = (String) param.get("start"), 
				end = (String) param.get("end"),
				diff = (String) param.get("diff"),
				result="";
		int A = Integer.parseInt(start);
		int E = Integer.parseInt(end);
		int D = Integer.parseInt(diff);
		int sum = A;
		int N = 2;
		int AN = 0;
		while(true) {
				AN = A+(N-1)*D;
				sum = sum+AN;
				N = N+1;
				if(N>E) break;
		}

		result = sum+"";
		System.out.println("-----result:::::"+result);
		return result;
	}

	@Override
	public String geometicSequence(Map<?, ?> param) {
		String result="";
		
		return result;
	}

}
