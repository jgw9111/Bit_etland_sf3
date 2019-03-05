package com.bit_trade.web.mapper;

import java.util.List;

import com.bit_trade.web.domain.ImageDTO;
import com.bit_trade.web.proxy.Proxy;

public interface ImageMapper {
	public void insertImage(ImageDTO img);
	public List<ImageDTO> selectimageList(Proxy pxy);
	public List<ImageDTO> selectsearchImages(Proxy pxy);
	public ImageDTO selectImage(ImageDTO img);
	public String lastImageSeq();
	public int countImage(Proxy pxy);
	public boolean existImage(Proxy pxy);
	public void updateImage(ImageDTO img);
	public void deleteImage(ImageDTO img);
	
}
