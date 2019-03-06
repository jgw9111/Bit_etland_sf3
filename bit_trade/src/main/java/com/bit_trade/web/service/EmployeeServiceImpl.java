package com.bit_trade.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit_trade.web.domain.EmployeeDTO;
@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Override
	public void registerEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<EmployeeDTO> bringEmployeesList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EmployeeDTO> retrieveEmployees(String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmployeeDTO retrieveEmployee(String serchWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countEmployees() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean exsitEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

}
