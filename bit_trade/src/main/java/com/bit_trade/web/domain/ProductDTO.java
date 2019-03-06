package com.bit_trade.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public class ProductDTO {
	private String productId, productName, supplierId, categoryId, unit, price;

	

}
