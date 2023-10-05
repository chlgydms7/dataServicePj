package com.jhit.admin.manage.service;

import java.util.HashMap;
import java.util.List;

import com.jhit.admin.manage.vo.ManageVO;


public interface ManageService{

	/**
	 * 오픈마켓 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<ManageVO> selectOpenList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 국가중점메타데이터 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<ManageVO> selectNationList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 건축데이터개방 목록조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<ManageVO> selectConstList(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 국가중점데이터 조회
	 * @return
	 * @throws Exception
	 */
	public List<ManageVO> selectNationData() throws Exception;

	/**
	 * 오픈마켓 구분조직 상세정보조회
	 * @param dataId
	 * @return
	 * @throws Exception
	 */
	public List<ManageVO> selectSeOrgan() throws Exception;
	
	/**
	 * 오픈마켓 상세정보조회
	 * @param dataId
	 * @return
	 * @throws Exception
	 */
	public ManageVO selectOpenDetail(String dataId) throws Exception;
	
	/**
	 * 국가중점메타데이터 상세정보조회
	 * @param metdataId
	 * @return
	 * @throws Exception
	 */
	public ManageVO selectNationDetail(String metdataId) throws Exception;
	
	/**
	 * 건축데이터개방 상세정보조회
	 * @param dataNm
	 * @return
	 * @throws Exception
	 */
	public ManageVO selectConstDetail(String dataNm) throws Exception;
	
	/**
	 * 코드정보
	 * @param dataId
	 * @return
	 * @throws Exception
	 */
	public List<ManageVO> codeInfo(String dataId) throws Exception;
	
	/**
	 * 오픈마켓 데이터 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateOpenData(ManageVO vo) throws Exception;
	
	/**
	 * 국가중점메타데이터 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateNationData(ManageVO vo) throws Exception;
	
	/**
	 * 건축데이터개방 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateConstData(ManageVO vo) throws Exception;

	/**
	 * 오픈마켓 구분 조직 데이터 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertSeOrganData(ManageVO vo) throws Exception;
	
	/**
	 * 오픈마켓 데이터 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertOpenData(ManageVO vo) throws Exception;
	
	/**
	 * 국가중점데이터 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertNationAData(ManageVO vo) throws Exception;
	
	/**
	 * 국가중점메타데이터 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertNationBData(ManageVO vo) throws Exception;
	
	/**
	 * 건축데이터개방 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertConstData(ManageVO vo) throws Exception;
	
	/**
	 * 오픈마켓 데이터 삭제
	 * @param dataId
	 * @throws Exception
	 */
	public void deleteOpenData(String dataId) throws Exception;
	
	/**
	 * 국가중점메타데이터 삭제
	 * @param metdataId
	 * @throws Exception
	 */
	public void deleteNationData(String metdataId) throws Exception;
	
	/**
	 * 건축데이터개방 삭제
	 * @param dataNm
	 * @throws Exception
	 */
	public void deleteConstData(String dataNm) throws Exception;
	
	/**
	 * 오픈마켓 전체 건수
	 * @return
	 * @throws Exception
	 */
	public int openTotalCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 국가중점메타데이터 전체 건수
	 * @return
	 * @throws Exception
	 */
	public int nationTotalCount(HashMap<String, Object> param) throws Exception;
	
	/**
	 * 건축데이터개방 전체 건수
	 * @return
	 * @throws Exception
	 */
	public int constTotalCount(HashMap<String, Object> param) throws Exception;
}