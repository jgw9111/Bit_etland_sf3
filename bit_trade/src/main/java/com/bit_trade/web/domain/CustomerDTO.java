package com.bit_trade.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public class CustomerDTO {
	private String startRow,endRow,rnum,
				   customerID, 
				   customerName, 
				   password, 
				   ssn, // 900000-1
				   photo,
				   phone,
				   city, // 지번주소
				   address, // 상세주소 
				   postalCode;
	
	
}
