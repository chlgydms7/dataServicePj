package com.jhit.common.vo;

import lombok.Data;

@Data
public class DefaultVO {
	
	private String rn;
	private String searchCondition = "";
	private String searchKeyword = "";
	private int pageIndex = 1;
	private int pageUnit = 10;
	private int pageSize = 10;
	private int firstIndex = 1;
	private int lastIndex = 1;
	private int recordCountPerPage = 10;
	private String searchGbn1 = "";
	private String searchGbn2 = "";
	private String searchGbn3 = "";
	private String searchGbn4 = "";
	private String txtBeginDt = "";
	private String txtEndDt = "";
	private String pagingTy;
	
}
