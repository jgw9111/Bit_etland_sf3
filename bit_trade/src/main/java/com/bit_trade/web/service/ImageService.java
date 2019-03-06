package com.bit_trade.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_trade.web.domain.ImageDTO;
import com.bit_trade.web.proxy.Proxy;
@Component
public interface ImageService {
	public void addImage(ImageDTO img);
	public List<ImageDTO> imageList(Proxy pxy);
	public List<ImageDTO> searchImages(Proxy pxy);
	public ImageDTO searchImage(ImageDTO img);
	public int countImage(Proxy pxy);
	public void updateImage(ImageDTO img);
	public String lastImageSeq();
	public void removeImage(ImageDTO img);
	
}
