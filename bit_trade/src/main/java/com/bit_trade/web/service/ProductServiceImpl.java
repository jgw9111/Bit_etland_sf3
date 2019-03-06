package com.bit_trade.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit_trade.web.domain.ProductDTO;
import com.bit_trade.web.proxy.Proxy;
@Service
public class ProductServiceImpl implements ProductService{

	@Override
	public void addProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductDTO> productsList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDTO> searchProducts(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDTO searchProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countProducts(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

}
