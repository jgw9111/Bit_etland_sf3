package com.bit_trade.web.iterator;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.bit_trade.web.domain.CustomerDTO;

public class PhoneBook {
	public static void main(String[] args) {
		HashMap<String,Object> map = null;
		Set set = map.entrySet();
		Iterator it = set.iterator();
		while(it.hasNext()) {
			Map.Entry ent = (Entry) it.next();
			CustomerDTO cust = (CustomerDTO) ent.getValue();
			/*
			 * System.out.println("이름 : "+ cust.getCustomerName());
			 * System.out.println("전화번호 : "+ cust.getPhone());
			 */
		}
	}
}
