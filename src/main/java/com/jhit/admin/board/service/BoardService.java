package com.jhit.admin.board.service;

import java.util.HashMap;
import java.util.List;

import com.jhit.admin.board.vo.BoardVO;

public interface BoardService{

	/**
	 * 목록조회
	 * @return
	 * @throws Exception
	 */
	public List<BoardVO> selectList(HashMap<String, Object> param) throws Exception;

	/**
	 * 상세정보조회
	 * @param idx
	 * @return
	 * @throws Exception
	 */
	public BoardVO selectDetail(int idx) throws Exception;
	
	/**
	 * 게시물 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateData(BoardVO vo) throws Exception;

	/**
	 * 게시물 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertData(BoardVO vo) throws Exception;
	
	/**
	 * 게시물 삭제
	 * @param idx
	 * @throws Exception
	 */
	public void deleteData(int idx) throws Exception;
	
	/**
	 * 전체 건수
	 * @return
	 * @throws Exception
	 */
	public int totalCount(HashMap<String, Object> param) throws Exception;
}