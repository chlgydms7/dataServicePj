package com.jhit.admin.extract.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jhit.admin.extract.vo.ExtractVO;

@Repository
public interface ExtractDao {
	
	List<ExtractVO> selectList(HashMap<String, Object> param);
	
    List<ExtractVO> selectDetail(String id);
    
    ExtractVO selectLogDetail(String id);
    
    int totalCount(HashMap<String, Object> param);
    
    List<ExtractVO> sidoBjdongCode();
    
    List<ExtractVO> sigunguBjdongCode(String sido);
    
    List<ExtractVO> umdBjdongCode(String sigungu);
    
    List<ExtractVO> liBjdongCode(String umd);
    
    List<ExtractVO> country();

    String selectErrorYn(String tableEngNm);
    
    List<ExtractVO> selectErrorList(String tableEngNm);
}