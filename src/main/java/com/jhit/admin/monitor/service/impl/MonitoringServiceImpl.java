package com.jhit.admin.monitor.service.impl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhit.admin.monitor.dao.MonitoringDao;
import com.jhit.admin.monitor.service.MonitoringService;
import com.jhit.admin.monitor.vo.MonitoringVO;

@Service
public class MonitoringServiceImpl implements MonitoringService {

    @Autowired
    private MonitoringDao monitoringDao;

	@Override
	public List<MonitoringVO> selectLoaderList(HashMap<String, Object> param) throws Exception {
		List<MonitoringVO> list = monitoringDao.selectLoaderList(param);
		return list;
	}
	
	@Override
	public List<MonitoringVO> selectExtrcList(HashMap<String, Object> param) throws Exception {
		List<MonitoringVO> list = monitoringDao.selectExtrcList(param);
		return list;
	}

	@Override
	public List<MonitoringVO> selectLoaderDetail(String id) throws Exception {
		List<MonitoringVO> vo = monitoringDao.selectLoaderDetail(id);
		return vo;
	}

	@Override
	public List<MonitoringVO> selectExtractDetail(String id) throws Exception {
		List<MonitoringVO> vo = monitoringDao.selectExtractDetail(id);
		return vo;
	}

	@Override
	public void updateCrawlingData(MonitoringVO vo) throws Exception {
		monitoringDao.updateCrawlingData(vo);
	}

	@Override
	public int loaderSuccessCount(HashMap<String, Object> param) throws Exception {
		int totalCount = monitoringDao.loaderSuccessCount(param);
		return totalCount;
	}

	@Override
	public int loaderFailCount(HashMap<String, Object> param) throws Exception {
		int totalCount = monitoringDao.loaderFailCount(param);
		return totalCount;
	}
	
	@Override
	public int extractSuccessCount(HashMap<String, Object> param) throws Exception {
		int totalCount = monitoringDao.extractSuccessCount(param);
		return totalCount;
	}

	@Override
	public int extractFailCount(HashMap<String, Object> param) throws Exception {
		int totalCount = monitoringDao.extractFailCount(param);
		return totalCount;
	}
	
	@Override
	public List<MonitoringVO> selectCrwlLogDetail(HashMap<String, Object> param) throws Exception {
		List<MonitoringVO> list = monitoringDao.selectCrwlLogDetail(param);
		return list;
	}

	@Override
	public List<MonitoringVO> selectLoadLogDetail(String id) throws Exception {
		List<MonitoringVO> list = monitoringDao.selectLoadLogDetail(id);
		return list;
	}
	
	@Override
	public List<MonitoringVO> selectExtrcLogDetail(HashMap<String, Object> param) throws Exception {
		List<MonitoringVO> list = monitoringDao.selectExtrcLogDetail(param);
		return list;
	}

	
	@Override
	public String selectLegaldongNm(String extrcIc) throws Exception {
		String result = monitoringDao.selectLegaldongNm(extrcIc);
		return result;
	}

	@Override
	public void extractDownload(MonitoringVO vo, HttpServletRequest req, HttpServletResponse res) throws Exception {

		MonitoringVO resultVO =  monitoringDao.selectExtrcFile(vo);
		
		String filePath = resultVO.getExtrcFilePath();
		String realFileName = resultVO.getExtrcFileNm();
		String fileName = resultVO.getExrtcKorNm();
		
		fileName = new String(fileName.getBytes("UTF-8"),"ISO-8859-1");
		byte b[] = new byte[4096];
		BufferedInputStream in = null;
		BufferedOutputStream out = null;
		int read = 0;
		try {
			  File file = new File(filePath+realFileName);
			  res.setContentType("application/octet-stream; charset=UTF-8");
		      res.setHeader("Content-Disposition","attachment; filename=" + fileName+ ";"); 
		    
			  in  = new BufferedInputStream(new FileInputStream(file));
		      out = new BufferedOutputStream(res.getOutputStream());
		    
		    while ((read = in.read(b)) != -1){
		        out.write(b,0,read);
		    }
		    out.flush();
		    in.close();
		    out.close();
		}catch(Exception e){
		  e.printStackTrace();
		}
	}

	@Override
	public void retryCrwl(String stepExecutionId) throws Exception {
		monitoringDao.retryCrwl(stepExecutionId);
	}

	@Override
	public void retryLoad(String stepExecutionId) throws Exception {
		monitoringDao.retryLoad(stepExecutionId);
	}

	@Override
	public List<MonitoringVO> selectCrwlLoadLogDetail(HashMap<String, Object> param) throws Exception {
		return monitoringDao.selectCrwlLoadLogDetail(param);
	}

	@Override
	public List<MonitoringVO> selectStepLog(HashMap<String, Object> param) throws Exception {
		return monitoringDao.selectStepLog(param);
	}
}