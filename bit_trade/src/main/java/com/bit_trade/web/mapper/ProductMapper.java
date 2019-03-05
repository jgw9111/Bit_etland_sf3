package com.bit_trade.web.mapper;

import java.util.List;

import com.bit_trade.web.domain.ProductDTO;
import com.bit_trade.web.proxy.Proxy;

public interface ProductMapper {
	public void insertProduct(ProductDTO pro);
	public List<ProductDTO> selectproductsList(Proxy pxy);
	public List<ProductDTO> selectProducts(Proxy pxy);
	public ProductDTO selectProduct(ProductDTO img);
	public int countProducts(Proxy pxy);
	public void updateProduct(ProductDTO pro);
	public void deleteProduct(ProductDTO pro);
}
