package com.bit_trade.web.mapper;

import java.util.List;

import com.bit_trade.web.domain.CategoryDTO;
import com.bit_trade.web.proxy.Proxy;

public interface CategoryMapper {
	public void insertCategory(CategoryDTO cate);
    public List<CategoryDTO> selectCategoryLists(Proxy pxy);
    public List<CategoryDTO> selectCategorys(String city);
    public CategoryDTO selectCategory(String categoryId);
    public int countCategory();
    public boolean existsCategory(String categoryId);
    public void updateCategory(CategoryDTO cate);
    public void deleteCategory(CategoryDTO cate);
}
