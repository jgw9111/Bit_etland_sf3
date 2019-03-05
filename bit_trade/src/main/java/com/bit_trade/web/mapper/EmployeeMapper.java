package com.bit_trade.web.mapper;

import java.util.List;

import com.bit_trade.web.domain.EmployeeDTO;

public interface EmployeeMapper {
	
	public void insertEmployee(EmployeeDTO emp);
	public List<EmployeeDTO> selectEmployeeList();
	public List<EmployeeDTO> selectEmployees(String searchWord);
	public EmployeeDTO selectEmployee(String serchWord);
	public int countEmployees();
	public boolean exsitEmployee(EmployeeDTO emp);
	public void updateEmployee(EmployeeDTO emp);
	public void deleteEmployee(EmployeeDTO emp);
}
