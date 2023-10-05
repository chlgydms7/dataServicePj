package com.jhit.admin.loader.service;

import java.util.HashMap;
import java.util.List;

import com.jhit.admin.loader.vo.LoaderVO;


public interface LoaderService{

	/**
	 * 크롤링 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<LoaderVO> selectList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 크롤링 상세정보조회
	 * @param fileSn
	 * @return
	 * @throws Exception
	 */
	public LoaderVO selectDetail(int fileSn) throws Exception;
	
	/**
	 * 크롤링 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateLoaderData(LoaderVO vo) throws Exception;

	/**
	 * 크롤링 진행 전체 건수
	 * @return
	 * @throws Exception
	 */
	public int totalCount(HashMap<String, Object> param) throws Exception;
}