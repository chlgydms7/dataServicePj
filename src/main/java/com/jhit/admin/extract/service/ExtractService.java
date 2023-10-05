package com.jhit.admin.extract.service;

import java.util.HashMap;
import java.util.List;

import com.jhit.admin.extract.vo.ExtractVO;

public interface ExtractService{

	/**
	 * 현황 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> selectList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 현황 상세정보조회
	 * @param fileSn
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> selectDetail(String id) throws Exception;
	
	/**
	 * step 로그 상세정보조회
	 * @param fileSn
	 * @return
	 * @throws Exception
	 */
	public ExtractVO selectLogDetail(String id) throws Exception;
	
	/**
	 * 현황 전체 건수
	 * @return
	 * @throws Exception
	 */
	public int totalCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 시도 법정동코드
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> sidoBjdongCode() throws Exception;
	
	/**
	 * 시군구 법정동코드
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> sigunguBjdongCode(String sido) throws Exception;
	
	/**
	 * 읍면동 법정동코드
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> umdBjdongCode(String sigungu) throws Exception;
	
	/**
	 * 리 법정동코드
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> liBjdongCode(String umd) throws Exception;
	
	
	/**
	 * 오류여부
	 * @return String
	 * @throws Exception
	 */
	public String selectErrorYn(String tableEngNm) throws Exception;
	
	/**
	 * 오류목록조회
	 * @param tableEngNm
	 * @return
	 * @throws Exception
	 */
	public List<ExtractVO> selectErrorList(String tableEngNm) throws Exception;
}