package com.jhit.admin.monitor.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jhit.admin.monitor.vo.MonitoringVO;

@Repository
public interface MonitoringDao {
	
	List<MonitoringVO> selectLoaderList(HashMap<String, Object> param);
	
	List<MonitoringVO> selectExtrcList(HashMap<String, Object> param);
	
    List<MonitoringVO> selectLoaderDetail(String id);
    
    List<MonitoringVO> selectExtractDetail(String id);
    
    void updateCrawlingData(MonitoringVO vo);
    
    int loaderSuccessCount(HashMap<String, Object> param);
    
    int loaderFailCount(HashMap<String, Object> param);
    
    int extractSuccessCount(HashMap<String, Object> param);
    
    int extractFailCount(HashMap<String, Object> param);
    
	List<MonitoringVO> selectCrwlLogDetail(HashMap<String, Object> param);
	
	List<MonitoringVO> selectLoadLogDetail(String id); 
	
	List<MonitoringVO> selectExtrcLogDetail(HashMap<String, Object> param); 
	
	String selectLegaldongNm(String extrcIc);
	
	MonitoringVO selectExtrcFile(MonitoringVO vo); 
	
	void retryCrwl(String stepExecutionId);
	
	void retryLoad(String stepExecutionId);

	List<MonitoringVO> selectCrwlLoadLogDetail(HashMap<String, Object> param);
	
	List<MonitoringVO> selectStepLog(HashMap<String, Object> param);
    
}