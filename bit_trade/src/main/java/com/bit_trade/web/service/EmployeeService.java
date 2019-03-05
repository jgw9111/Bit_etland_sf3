package com.bit_trade.web.service;

import java.util.List;

import com.bit_trade.web.domain.EmployeeDTO;

public interface EmployeeService {
	public void registerEmployee(EmployeeDTO emp);
	
	public List<EmployeeDTO> bringEmployeesList();
	public List<EmployeeDTO> retrieveEmployees(String searchWord);
	public EmployeeDTO retrieveEmployee(String serchWord);
	public int countEmployees();
	public boolean exsitEmployee(EmployeeDTO emp);
	
	public void modifyEmployee(EmployeeDTO emp);
	public void removeEmployee(EmployeeDTO emp);
}
