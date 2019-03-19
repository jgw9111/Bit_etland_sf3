package com.bit_trade.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class AlgoServiceImpl implements AlgoService {

	@Override
	public String arithmeticSequence(Map<?,?> param) {
		String startNum = (String) param.get("startNum"), 
				endNum = (String) param.get("endNum"),
				diff = (String) param.get("diff"),
				result="";
		System.out.println("-----result1):::::"+result);
		int A = Integer.parseInt(startNum);
		System.out.println("-----startNum ->):::::"+A);
		int E = Integer.parseInt(endNum);
		System.out.println("-----endNum ->):::::"+E);
		int D = Integer.parseInt(diff);
		System.out.println("-----diff ->):::::"+D);
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
