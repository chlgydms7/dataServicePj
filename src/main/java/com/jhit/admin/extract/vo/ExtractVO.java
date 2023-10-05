package com.jhit.admin.extract.vo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Data
public class ExtractVO{
	
	//데이터 목록 dtmt006
	private String rn;
	private String tableEngNm;
	private String tableKorNm;
	private String columNm;
	private String dataGb;
	private String useAt;
	private String lastUpdtDt;
	private String dataGbNm;
	private String errorYn; //오류여부
	
	//법정동코드 dtmt005
	private String bjdongCode;
	private String legaldongNm;
	
	//오류리스트조회
	private String lodTableNm;
	private String loadSttus;
	private String loadErrorCn;
	private String loadBegin;
	private String loadEnd;
	private String loadStepExecutionId;
	private String crwlSttus;
	private String crwlErrorCn;
	private String crwlBegin;
	private String crwlEnd;
	private String crwlStepExecutionId;
	
	public String getLodTableNm() {
		return lodTableNm;
	}
	public void setLodTableNm(String lodTableNm) {
		this.lodTableNm = lodTableNm;
	}
	public String getLoadSttus() {
		return loadSttus;
	}
	public void setLoadSttus(String loadSttus) {
		this.loadSttus = loadSttus;
	}
	public String getLoadErrorCn() {
		return loadErrorCn;
	}
	public void setLoadErrorCn(String loadErrorCn) {
		this.loadErrorCn = loadErrorCn;
	}
	public String getLoadBegin() {
		return loadBegin;
	}
	public void setLoadBegin(String loadBegin) {
		this.loadBegin = loadBegin;
	}
	public String getLoadEnd() {
		return loadEnd;
	}
	public void setLoadEnd(String loadEnd) {
		this.loadEnd = loadEnd;
	}
	public String getLoadStepExecutionId() {
		return loadStepExecutionId;
	}
	public void setLoadStepExecutionId(String loadStepExecutionId) {
		this.loadStepExecutionId = loadStepExecutionId;
	}
	public String getCrwlSttus() {
		return crwlSttus;
	}
	public void setCrwlSttus(String crwlSttus) {
		this.crwlSttus = crwlSttus;
	}
	public String getCrwlErrorCn() {
		return crwlErrorCn;
	}
	public void setCrwlErrorCn(String crwlErrorCn) {
		this.crwlErrorCn = crwlErrorCn;
	}
	public String getCrwlBegin() {
		return crwlBegin;
	}
	public void setCrwlBegin(String crwlBegin) {
		this.crwlBegin = crwlBegin;
	}
	public String getCrwlEnd() {
		return crwlEnd;
	}
	public void setCrwlEnd(String crwlEnd) {
		this.crwlEnd = crwlEnd;
	}
	public String getCrwlStepExecutionId() {
		return crwlStepExecutionId;
	}
	public void setCrwlStepExecutionId(String crwlStepExecutionId) {
		this.crwlStepExecutionId = crwlStepExecutionId;
	}
	private String searchCondition;
	private String searchKeyword;
	
	public String getTableEngNm() {
		return tableEngNm;
	}
	public void setTableEngNm(String tableEngNm) {
		this.tableEngNm = tableEngNm;
	}
	public String getTableKorNm() {
		return tableKorNm;
	}
	public void setTableKorNm(String tableKorNm) {
		this.tableKorNm = tableKorNm;
	}
	public String getColumNm() {
		return columNm;
	}
	public void setColumNm(String columNm) {
		this.columNm = columNm;
	}
	public String getDataGb() {
		return dataGb;
	}
	public void setDataGb(String dataGb) {
		this.dataGb = dataGb;
	}
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getRn() {
		return rn;
	}
	public void setRn(String rn) {
		this.rn = rn;
	}
	public String getBjdongCode() {
		return bjdongCode;
	}
	public void setBjdongCode(String bjdongCode) {
		this.bjdongCode = bjdongCode;
	}
	public String getLegaldongNm() {
		return legaldongNm;
	}
	public void setLegaldongNm(String legaldongNm) {
		this.legaldongNm = legaldongNm;
	}
	public String getLastUpdtDt() {
		return lastUpdtDt;
	}
	public void setLastUpdtDt(String lastUpdtDt) {
		this.lastUpdtDt = lastUpdtDt;
	}
	public String getDataGbNm() {
		return dataGbNm;
	}
	public void setDataGbNm(String dataGbNm) {
		this.dataGbNm = dataGbNm;
	}
	public String getErrorYn() {
		return errorYn;
	}
	public void setErrorYn(String errorYn) {
		this.errorYn = errorYn;
	}
	
	
}