package com.bit_trade.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class SequenceServiceImpl implements SequenceService {

	@Override
	public String arithmeticSequence(Map<?,?> param) {
		String startNum = (String) param.get("startNum"), 
				endNum = (String) param.get("endNum"),
				diff = (String) param.get("diff"),
				result="";
		int A = Integer.parseInt(startNum);
		int E = Integer.parseInt(endNum);
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
		return result;
	}

	@Override
	public String geometicSequence(Map<?, ?> param) {
		String ratio = (String) param.get("diff"),
				startNum = (String) param.get("startNum"),
				endNum = (String) param.get("endNum");
		int A = Integer.parseInt(startNum);
		int R = Integer.parseInt(ratio);
		int E = Integer.parseInt(endNum);
		int S = A;
		int N = 2;
		while(true) {
			A = A*R;
			S += A;
			N++;
			if(N>E) {
				break;
			}
		}
		return S+"";
	}

	@Override
	public String factorialSequence(Map<?, ?> param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String fibonacciSequence(Map<?, ?> param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String switchSequence(Map<?, ?> param) {
		// TODO Auto-generated method stub
		return null;
	}

}
