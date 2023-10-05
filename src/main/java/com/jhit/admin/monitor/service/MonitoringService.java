package com.jhit.admin.monitor.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jhit.admin.monitor.vo.MonitoringVO;


public interface MonitoringService{

	/**
	 * 적재 현황 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectLoaderList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 추출 현황 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectExtrcList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 적재현황 상세정보조회
	 * @param fileSn
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectLoaderDetail(String id) throws Exception;
	
	/**
	 * 추출현황 상세정보조회
	 * @param fileSn
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectExtractDetail(String id) throws Exception;
	
	/**
	 * 크롤링 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateCrawlingData(MonitoringVO vo) throws Exception;

	/**
	 * 적재 성공건수
	 * @return
	 * @throws Exception
	 */
	public int loaderSuccessCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 적재 실패건수
	 * @return
	 * @throws Exception
	 */
	public int loaderFailCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 추출 성공건수
	 * @return
	 * @throws Exception
	 */
	public int  extractSuccessCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 추출 실패건수
	 * @return
	 * @throws Exception
	 */
	public int extractFailCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 크롤링 상세 로그
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectCrwlLogDetail(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 적재 상세 로그
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectLoadLogDetail(String id) throws Exception;
	
	/**
	 * 추출 로그 상세조회
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectExtrcLogDetail(HashMap<String, Object> param) throws Exception;
	
	
	/**
	 * 추출 로그 지역조회
	 * @param extrcIc
	 * @return
	 * @throws Exception
	 */
	public String selectLegaldongNm(String extrcIc) throws Exception;
	
	
    /**
     * 데이터 추출 다운로드
     * @param vo
     * @throws Exception
     */	
    public void  extractDownload(MonitoringVO vo, HttpServletRequest req, HttpServletResponse res) throws Exception;
    
    /**
     * 재실행(크롤링로그 재실행여부 수정)
     * @param stepExecutionId
     * @throws Exception
     */
    public void retryCrwl(String stepExecutionId) throws Exception;
    
    /**
     * 재실행(적재로그 재실행여부 수정)
     * @param stepExecutionId
     * @throws Exception
     */
    public void retryLoad(String stepExecutionId) throws Exception;

	/**
	 * 크롤링, 적재 상세 로그
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectCrwlLoadLogDetail(HashMap<String, Object> param) throws Exception;
	
	/**
	 * batch step 상세 로그
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<MonitoringVO> selectStepLog(HashMap<String, Object> param) throws Exception;

}
    
