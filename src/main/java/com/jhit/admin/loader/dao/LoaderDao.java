package com.jhit.admin.loader.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jhit.admin.loader.vo.LoaderVO;

@Repository
public interface LoaderDao {
	
	List<LoaderVO> selectList(HashMap<String, Object> param);
	
    LoaderVO selectDetail(int fileSn);
    
    void updateLoaderData(LoaderVO vo);
    
    int totalCount(HashMap<String, Object> param);
    
}