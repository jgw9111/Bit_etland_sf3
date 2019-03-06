package com.bit_trade.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public class CategoryDTO {
	private String categoryId, categoryName,description;


}
