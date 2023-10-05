package com.jhit.admin.manage.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhit.admin.manage.dao.ManageDao;
import com.jhit.admin.manage.service.ManageService;
import com.jhit.admin.manage.vo.ManageVO;

@Service
public class ManageServiceImpl implements ManageService {

    @Autowired
    private ManageDao manageDao;

    @Override
    public int openTotalCount(HashMap<String, Object> param) throws Exception{
    	int total = manageDao.openTotalCount(param);
    	return total;
    }
    
    @Override
	public int nationTotalCount(HashMap<String, Object> param) throws Exception {
    	int total = manageDao.nationTotalCount(param);
    	return total;
	}

	@Override
	public int constTotalCount(HashMap<String, Object> param) throws Exception {
		int total = manageDao.constTotalCount(param);
    	return total;
	}
    
	@Override
	public List<ManageVO> selectOpenList(HashMap<String, Object> param) throws Exception{
		List<ManageVO> lists  = manageDao.selectOpenList(param);
    	return lists;
    }
	
	@Override
	public List<ManageVO> selectNationList(HashMap<String, Object> param) throws Exception {
		List<ManageVO> lists  = manageDao.selectNationList(param);
    	return lists;
	}

	@Override
	public List<ManageVO> selectConstList(HashMap<String, Object> param) throws Exception {
		List<ManageVO> lists  = manageDao.selectConstList(param);
    	return lists;
	}  
	
	@Override
	public ManageVO selectOpenDetail(String dataId) throws Exception {
		ManageVO vo = manageDao.selectOpenDetail(dataId);
		return vo;
	}

	@Override
	public ManageVO selectNationDetail(String metdataId) throws Exception {
		ManageVO vo = manageDao.selectNationDetail(metdataId);
		return vo;
	}

	@Override
	public ManageVO selectConstDetail(String dataNm) throws Exception {
		ManageVO vo = manageDao.selectConstDetail(dataNm);
		return vo;
	}
	
	@Override
	public List<ManageVO> codeInfo(String dataId) throws Exception {
		List<ManageVO> lists = manageDao.codeInfo(dataId);
		return lists;
	}
	
	@Override
	public void updateOpenData(ManageVO vo) throws Exception {
		manageDao.updateOpenData(vo);
	}
	
	@Override
	public void updateNationData(ManageVO vo) throws Exception {
		manageDao.updateNationData(vo);
	}
	
	@Override
	public void updateConstData(ManageVO vo) throws Exception {
		manageDao.updateConstData(vo);
	}

	@Override
	public void insertOpenData(ManageVO vo) throws Exception {
		manageDao.insertOpenData(vo);
	}
	

	@Override
	public void insertNationBData(ManageVO vo) throws Exception {
		manageDao.insertNationBData(vo);
	}

	@Override
	public void insertConstData(ManageVO vo) throws Exception {
		manageDao.insertConstData(vo);
	}

	@Override
	public void deleteOpenData(String dataId) throws Exception {
		manageDao.deleteOpenData(dataId);
	}

	@Override
	public void deleteNationData(String metdataId) throws Exception {
		manageDao.deleteNationData(metdataId);
	}

	@Override
	public void deleteConstData(String dataNm) throws Exception {
		manageDao.deleteConstData(dataNm);
	}

	@Override
	public List<ManageVO> selectNationData() throws Exception {
		List<ManageVO> lists = manageDao.selectNationData();
		return lists;
	}

	@Override
	public void insertNationAData(ManageVO vo) throws Exception {
		manageDao.insertNationAData(vo);
	}

	@Override
	public List<ManageVO> selectSeOrgan() throws Exception {
		List<ManageVO> vo = manageDao.selectSeOrgan();
		return vo;
	}

	@Override
	public void insertSeOrganData(ManageVO vo) throws Exception {
		manageDao.insertSeOrganData(vo);
	}

}