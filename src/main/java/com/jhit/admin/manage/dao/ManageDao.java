package com.jhit.admin.manage.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jhit.admin.manage.vo.ManageVO;

@Repository
public interface ManageDao {
	
//	List<ManageVO> selectList(HashMap<String, Object> param);
	
	List<ManageVO> selectOpenList(HashMap<String, Object> param);
	
	List<ManageVO> selectNationList(HashMap<String, Object> param); //국가중점메타데이터
	
	List<ManageVO> selectConstList(HashMap<String, Object> param);
	
    ManageVO selectOpenDetail(String dataId);
    
    ManageVO selectNationDetail(String metdataId);
    
    ManageVO selectConstDetail(String dataNm);
    
    List<ManageVO> selectNationData(); //국가중점데이터
    
    List<ManageVO> codeInfo(String codeId);
    
    List<ManageVO> selectSeOrgan();
    
    void updateOpenData(ManageVO vo);
    
    void updateNationData(ManageVO vo);
    
    void updateConstData(ManageVO vo);
    
    void insertOpenData(ManageVO vo);
    
    void insertNationBData(ManageVO vo); //국가중점메타데이터
    
    void insertConstData(ManageVO vo);
    
    void insertNationAData(ManageVO vo); //국가중점데이터
    
    void insertSeOrganData(ManageVO vo); //오픈마켓 구분 조직 목록
    
    void deleteOpenData(String dataId);
    
    void deleteNationData(String metdataId);
    
    void deleteConstData(String dataNm);
    
    int openTotalCount(HashMap<String, Object> param);
    
    int nationTotalCount(HashMap<String, Object> param);
    
    int constTotalCount(HashMap<String, Object> param);
    
}