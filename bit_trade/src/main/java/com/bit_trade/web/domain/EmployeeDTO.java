package com.bit_trade.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public class EmployeeDTO {
	private String employeeId, manager, name, birthDate, photo, notes;

	
}
