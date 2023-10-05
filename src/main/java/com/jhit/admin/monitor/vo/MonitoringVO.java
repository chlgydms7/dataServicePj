package com.jhit.admin.monitor.vo;

import java.sql.Timestamp;

import lombok.AccessLevel;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Data
public class MonitoringVO{
	
	private String jobExecutionId; //job ID
	private String jobName; //job 이름
	private String status; //상태
	private String searchCondition;
	private String searchKeyword;
	private String searchDate;
	private int rn;
	private String date;
	private Timestamp startTime; //시작시간
	private Timestamp endTime; //종료시간

	//extrc_log
	private String extrcLogNo; 
	private String exrtcKorNm; 
	private String extrcFileNm; 
	private String extrcFilePath; 
	private String legaldongNm;  //지역이름
	private String extrcIc;  //지역코드
	private String extrcErrorCn; 
	private String extrcExpireDt; 
	private String extrcSize; 
	private String useAt; //사용여부
	
	//batchLog
	private String jobInstanceId; //job instance ID
	private String stepExecutionId; //stepId
	private String stepNm; //단계명
	private String stepCode; //단계코드
	private String startStatus; //시작상태
	private String endStatus; //종료상태	
	
	//crawlingLog
	private String fileId; //파일ID
	private String fileCo; //파일 수
	private String fileOrigin; //파일 출처
	private String errorCn; //오류내용
	private String dataNm; //데이터명
	
	//dataloaderLog
	private String lodTablenm; //적재 테이블명
	private String lodOrigin; //출처
	private String lodNm; //데이터명
	private String lodCnt; //적재 파일 수
	private String lodErrorCn; //적재 오류 내용
	
	//batch step log
	private String startSttus;
	private String endSttus;
	private String exitMsg;
	
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
	public Timestamp getStartTime() {
		return startTime;
	}
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}
	public String getEndStatus() {
		return endStatus;
	}
	public void setEndStatus(String endStatus) {
		this.endStatus = endStatus;
	}
	public Timestamp getEndTime() {
		return endTime;
	}
	public void setEndTime(Timestamp endTime) {
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStepExecutionId() {
		return stepExecutionId;
	}
	public void setStepExecutionId(String stepExecutionId) {
		this.stepExecutionId = stepExecutionId;
	}
	public String getDataNm() {
		return dataNm;
	}
	public void setDataNm(String dataNm) {
		this.dataNm = dataNm;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getJobInstanceId() {
		return jobInstanceId;
	}
	public void setJobInstanceId(String jobInstanceId) {
		this.jobInstanceId = jobInstanceId;
	}
	public String getLodTablenm() {
		return lodTablenm;
	}
	public void setLodTablenm(String lodTablenm) {
		this.lodTablenm = lodTablenm;
	}
	public String getLodOrigin() {
		return lodOrigin;
	}
	public void setLodOrigin(String lodOrigin) {
		this.lodOrigin = lodOrigin;
	}
	public String getLodNm() {
		return lodNm;
	}
	public void setLodNm(String lodNm) {
		this.lodNm = lodNm;
	}
	public String getLodCnt() {
		return lodCnt;
	}
	public void setLodCnt(String lodCnt) {
		this.lodCnt = lodCnt;
	}
	public String getLodErrorCn() {
		return lodErrorCn;
	}
	public void setLodErrorCn(String lodErrorCn) {
		this.lodErrorCn = lodErrorCn;
	}
	public String getExrtcKorNm() {
		return exrtcKorNm;
	}
	public void setExrtcKorNm(String exrtcKorNm) {
		this.exrtcKorNm = exrtcKorNm;
	}
	public String getExtrcFileNm() {
		return extrcFileNm;
	}
	public void setExtrcFileNm(String extrcFileNm) {
		this.extrcFileNm = extrcFileNm;
	}
	public String getExtrcFilePath() {
		return extrcFilePath;
	}
	public void setExtrcFilePath(String extrcFilePath) {
		this.extrcFilePath = extrcFilePath;
	}
	public String getLegaldongNm() {
		return legaldongNm;
	}
	public void setLegaldongNm(String legaldongNm) {
		this.legaldongNm = legaldongNm;
	}
	public String getExtrcIc() {
		return extrcIc;
	}
	public void setExtrcIc(String extrcIc) {
		this.extrcIc = extrcIc;
	}
	public String getExtrcErrorCn() {
		return extrcErrorCn;
	}
	public void setExtrcErrorCn(String extrcErrorCn) {
		this.extrcErrorCn = extrcErrorCn;
	}
	public String getExtrcExpireDt() {
		return extrcExpireDt;
	}
	public void setExtrcExpireDt(String extrcExpireDt) {
		this.extrcExpireDt = extrcExpireDt;
	}
	public String getExtrcLogNo() {
		return extrcLogNo;
	}
	public void setExtrcLogNo(String extrcLogNo) {
		this.extrcLogNo = extrcLogNo;
	}
	public String getExtrcSize() {
		return extrcSize;
	}
	public void setExtrcSize(String extrcSize) {
		this.extrcSize = extrcSize;
	}
	public String getSearchDate() {
		return searchDate;
	}
	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}
	public String getStepCode() {
		return stepCode;
	}
	public void setStepCode(String stepCode) {
		this.stepCode = stepCode;
	}
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	public String getStartSttus() {
		return startSttus;
	}
	public void setStartSttus(String startSttus) {
		this.startSttus = startSttus;
	}
	public String getEndSttus() {
		return endSttus;
	}
	public void setEndSttus(String endSttus) {
		this.endSttus = endSttus;
	}
	public String getExitMsg() {
		return exitMsg;
	}
	public void setExitMsg(String exitMsg) {
		this.exitMsg = exitMsg;
	}
	
}