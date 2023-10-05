package com.jhit.admin.crawl.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jhit.admin.crawl.vo.CrawlingVO;

@Repository
public interface CrawlingDao {
	
	List<CrawlingVO> selectList(HashMap<String, Object> param);
	
    CrawlingVO selectDetail(int fileSn);
    
    void updateCrawlingData(CrawlingVO vo);
    
    int totalCount(HashMap<String, Object> param);
    
}