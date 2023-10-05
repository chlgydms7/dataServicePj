package com.jhit.admin.crawl.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhit.admin.crawl.dao.CrawlingDao;
import com.jhit.admin.crawl.service.CrawlingService;
import com.jhit.admin.crawl.vo.CrawlingVO;

@Service
public class CrawlingServiceImpl implements CrawlingService {

    @Autowired
    private CrawlingDao crawlingDao;

	@Override
	public List<CrawlingVO> selectList(HashMap<String, Object> param) throws Exception {
		List<CrawlingVO> list = crawlingDao.selectList(param);
		return list;
	}

	@Override
	public CrawlingVO selectDetail(int fileSn) throws Exception {
		CrawlingVO vo = crawlingDao.selectDetail(fileSn);
		return vo;
	}

	@Override
	public void updateCrawlingData(CrawlingVO vo) throws Exception {
		crawlingDao.updateCrawlingData(vo);
	}

	@Override
	public int totalCount(HashMap<String, Object> param) throws Exception {
		int totalCount = crawlingDao.totalCount(param);
		return totalCount;
	}

}