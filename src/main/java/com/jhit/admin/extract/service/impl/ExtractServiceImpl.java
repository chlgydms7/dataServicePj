package com.jhit.admin.extract.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhit.admin.extract.dao.ExtractDao;
import com.jhit.admin.extract.service.ExtractService;
import com.jhit.admin.extract.vo.ExtractVO;

@Service
public class ExtractServiceImpl implements ExtractService {

    @Autowired
    private ExtractDao extractDao;

	@Override
	public List<ExtractVO> selectList(HashMap<String, Object> param) throws Exception {
		List<ExtractVO> list = extractDao.selectList(param);
		return list;
	}

	@Override
	public List<ExtractVO> selectDetail(String id) throws Exception {
		List<ExtractVO> vo = extractDao.selectDetail(id);
		return vo;
	}

	@Override
	public int totalCount(HashMap<String, Object> param) throws Exception {
		int totalCount = extractDao.totalCount(param);
		return totalCount;
	}

	@Override
	public ExtractVO selectLogDetail(String id) throws Exception {
		ExtractVO vo = extractDao.selectLogDetail(id);
		return vo;
	}

	@Override
	public List<ExtractVO> sidoBjdongCode() throws Exception {
		List<ExtractVO> lists = extractDao.sidoBjdongCode();
		return lists;
	}

	@Override
	public List<ExtractVO> sigunguBjdongCode(String sido) throws Exception {
		List<ExtractVO> lists = extractDao.sigunguBjdongCode(sido);
		return lists;
	}

	@Override
	public List<ExtractVO> umdBjdongCode(String sigungu) throws Exception {
		List<ExtractVO> lists = extractDao.umdBjdongCode(sigungu);
		return lists;
	}

	@Override
	public List<ExtractVO> liBjdongCode(String li) throws Exception {
		List<ExtractVO> lists = extractDao.liBjdongCode(li);
		return lists;
	}
	
	@Override
	public String selectErrorYn(String tableEngNm) throws Exception{
		String result = extractDao.selectErrorYn(tableEngNm);
		return result;
	}

	@Override
	public List<ExtractVO> selectErrorList(String tableEngNm) throws Exception {
		return extractDao.selectErrorList(tableEngNm);
	}

}