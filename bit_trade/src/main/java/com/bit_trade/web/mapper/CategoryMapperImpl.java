package com.bit_trade.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_trade.web.domain.CategoryDTO;
import com.bit_trade.web.proxy.Proxy;

@Repository
public class CategoryMapperImpl implements CategoryMapper{

	@Override
	public void insertCategory(CategoryDTO cate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CategoryDTO> selectCategoryLists(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CategoryDTO> selectCategorys(String city) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryDTO selectCategory(String categoryId) {
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
	public void updateCategory(CategoryDTO cate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCategory(CategoryDTO cate) {
		// TODO Auto-generated method stub
		
	}

}
