package com.bit_trade.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit_trade.web.domain.CategoryDTO;
import com.bit_trade.web.proxy.Proxy;
@Service
public class CategoryServiceImpl implements CategoryService {

	@Override
	public void joinCategory(CategoryDTO cate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CategoryDTO> bringCategoryLists(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CategoryDTO> retrieveCategorys(String city) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryDTO retrieveCategory(String categoryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countCategory() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existsCategory(String categoryId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyCategory(CategoryDTO cate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeCategory(CategoryDTO cate) {
		// TODO Auto-generated method stub
		
	}

}
