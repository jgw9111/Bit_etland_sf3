package com.bit_trade.web.enums;

public enum CategorySQL {
	CATE_LIST;

	@Override
	public String toString() {
		StringBuffer query = new StringBuffer();
		switch (this) {
		case CATE_LIST:
			query.append("SELECT T2.* \n" + 
					"FROM (SELECT ROWNUM R2, T.*\n" + 
					"       FROM (SELECT ROWNUM RNUM, C.*\n" + 
					"               FROM CATEGORIES C\n" + 
					"                ORDER BY RNUM DESC) T) T2\n" + 
					"        WHERE R2 BETWEEN ? AND ?");
			break;

		default:
			break;
		}
		return query.toString();
	}
}
