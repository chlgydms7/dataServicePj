package com.jhit.admin.board.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jhit.admin.board.vo.BoardVO;

@Repository
public interface BoardDao {
	
	List<BoardVO> selectList(HashMap<String, Object> param);
	
    BoardVO selectDetail(int idx);
    
    void updateBoardData(BoardVO vo);
    
    void insertBoardData(BoardVO vo);
    
    void deleteBoardData(int idx);
    
    int totalCount(HashMap<String, Object> param);
}