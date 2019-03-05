package com.bit_trade.web.service;

import java.util.List;

import com.bit_trade.web.domain.ProductDTO;
import com.bit_trade.web.proxy.Proxy;

public interface ProductService {
	public void addProduct(ProductDTO pro);
	public List<ProductDTO> productsList(Proxy pxy);
	public List<ProductDTO> searchProducts(Proxy pxy);
	public ProductDTO searchProduct(ProductDTO pro);
	public int countProducts(Proxy pxy);
	public void updateProduct(ProductDTO pro);
	public void removeProduct(ProductDTO pro);
}
