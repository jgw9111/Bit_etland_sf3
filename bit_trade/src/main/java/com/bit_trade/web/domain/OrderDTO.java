package com.bit_trade.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public class OrderDTO {
	
	private String orderId, customerId, employeeId, orderDate, shipperId;

	
}
