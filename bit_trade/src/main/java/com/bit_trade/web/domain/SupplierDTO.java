package com.bit_trade.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public class SupplierDTO {
	private String supplierId, supplierName, address, city, postalCode, phone;


}
