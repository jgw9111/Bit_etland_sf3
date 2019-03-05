package com.bit_trade.web.mapper;

import java.util.List;

import com.bit_trade.web.domain.ShipperDTO;

public interface ShipperMapper {
	public void insertShipper(ShipperDTO shi);
	public List<ShipperDTO> selectShippersList();
	public List<ShipperDTO> selectShippers(String searchWord);
	public ShipperDTO selectShipper(String serchWord);
	public int countShippers();
	public boolean existShipper();
	public void updateShipper(ShipperDTO shi);
	public void deleteShipper(ShipperDTO shi);
}
