package com.jhit.admin.loader.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhit.admin.loader.dao.LoaderDao;
import com.jhit.admin.loader.service.LoaderService;
import com.jhit.admin.loader.vo.LoaderVO;


@Service
public class LoaderServiceImpl implements LoaderService {

    @Autowired
    private LoaderDao loaderDao;

	@Override
	public List<LoaderVO> selectList(HashMap<String, Object> param) throws Exception {
		List<LoaderVO> list = loaderDao.selectList(param);
		return list;
	}

	@Override
	public LoaderVO selectDetail(int fileSn) throws Exception {
		LoaderVO vo = loaderDao.selectDetail(fileSn);
		return vo;
	}

	@Override
	public void updateLoaderData(LoaderVO vo) throws Exception {
		loaderDao.updateLoaderData(vo);
	}

	@Override
	public int totalCount(HashMap<String, Object> param) throws Exception {
		int totalCount = loaderDao.totalCount(param);
		return totalCount;
	}

}