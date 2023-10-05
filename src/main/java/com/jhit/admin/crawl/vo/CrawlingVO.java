package com.jhit.admin.crawl.vo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Data
public class CrawlingVO{
	
	//batchLog
	private String jobExecutionId; //job ID
	private String stepNm; //단계명
	private String startStatus; //시작상태
	private String startTime; //시작시간
	private String endStatus; //종료상태
	private String endTime; //종료시간
	
	private String jobName; //job 이름
	
	//crawlingLog
	private String fileId; //파일ID
	private String fileCo; //파일 수
	private String fileOrigin; //파일 출처
	private String errorCn; //오류내용
	
	private String searchCondition;
	private String searchKeyword;
	private int rn;
	
	public String getStepNm() {
		return stepNm;
	}
	public void setStepNm(String stepNm) {
		this.stepNm = stepNm;
	}
	public String getStartStatus() {
		return startStatus;
	}
	public void setStartStatus(String startStatus) {
		this.startStatus = startStatus;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndStatus() {
		return endStatus;
	}
	public void setEndStatus(String endStatus) {
		this.endStatus = endStatus;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
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
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public String getFileCo() {
		return fileCo;
	}
	public void setFileCo(String fileCo) {
		this.fileCo = fileCo;
	}
	public String getFileOrigin() {
		return fileOrigin;
	}
	public void setFileOrigin(String fileOrigin) {
		this.fileOrigin = fileOrigin;
	}
	public String getErrorCn() {
		return errorCn;
	}
	public void setErrorCn(String errorCn) {
		this.errorCn = errorCn;
	}
	public String getJobExecutionId() {
		return jobExecutionId;
	}
	public void setJobExecutionId(String jobExecutionId) {
		this.jobExecutionId = jobExecutionId;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
}