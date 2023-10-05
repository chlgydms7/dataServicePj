package com.jhit.admin.board.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhit.admin.board.dao.BoardDao;
import com.jhit.admin.board.service.BoardService;
import com.jhit.admin.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardDao boardDao;

    @Override
    public int totalCount(HashMap<String, Object> param) throws Exception{
    	int total = boardDao.totalCount(param);
    	return total;
    }
    
	@Override
	public List<BoardVO> selectList(HashMap<String, Object> param) throws Exception{
		List<BoardVO> lists  = boardDao.selectList(param);
    	return lists;
    }

	@Override
	public BoardVO selectDetail(int idx) throws Exception {
		BoardVO vo = boardDao.selectDetail(idx);
		return vo;
	}

	@Override
	public void updateData(BoardVO vo) throws Exception {
		boardDao.updateBoardData(vo);
	}

	@Override
	public void insertData(BoardVO vo) throws Exception {
		boardDao.insertBoardData(vo);
	}

	@Override
	public void deleteData(int idx) throws Exception {
		boardDao.deleteBoardData(idx);
	}    
    
}