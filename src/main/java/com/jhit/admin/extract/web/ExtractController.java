package com.jhit.admin.extract.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jhit.admin.call.CallExtraction;
import com.jhit.admin.extract.service.ExtractService;
import com.jhit.admin.extract.vo.ExtractVO;
import com.jhit.admin.monitor.vo.MonitoringVO;

@Controller
@RequestMapping(value = "/")
public class ExtractController {

    @Autowired
    private ExtractService extractService;
    
    /**
     * 데이터 추출 목록화면 조회
     * @return param, pagingvo, request, vo
     * @throws Exception
     */
    @RequestMapping(value="/extractList")
    public ModelAndView extractListView(@RequestParam(value="searchCondition", required = false)String searchCondition, @RequestParam(value="searchKeyword", required = false)String searchKeyword,
    											HttpServletRequest request, ExtractVO vo) throws Exception {
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	param.put("searchCondition", searchCondition);
    	param.put("searchKeyword", searchKeyword);
    	
    	int totalCount = extractService.totalCount(param);
    	
    	List<ExtractVO> lists = extractService.selectList(param);
    	
    	//법정동코드
    	List<ExtractVO> sidoCode = extractService.sidoBjdongCode();
    	
    	if(lists.size() != 0) {
			for(int i =0; i < lists.size(); i++) {
				String errorYn = extractService.selectErrorYn(lists.get(i).getTableEngNm());
				lists.get(i).setErrorYn(errorYn);
			}
			
    	}
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("totalCount", totalCount);
    	
    	mav.addObject("sidoCode", sidoCode);
    	
    	mav.addObject("lists", lists);
    	mav.addObject("vo", vo);
    	mav.setViewName("admin/extract/extractList");
    	
    	return mav;
    }
    
    @RequestMapping(value="/dataErrorList")
    @ResponseBody
    public List<ExtractVO> dataErrorListView(HttpServletRequest request, ExtractVO vo) throws Exception {
    	String tableEngNm = request.getParameter("tableEngNm");
    	List<ExtractVO> list = extractService.selectErrorList(tableEngNm);
    	return list;
    }
    
    @RequestMapping(value="/selectSigungu")
    @ResponseBody
    public List<ExtractVO> sigunguView(HttpServletRequest request, ExtractVO vo) throws Exception {
    	String sido = request.getParameter("sidoCode");
    	List<ExtractVO> list = extractService.sigunguBjdongCode(sido);
    	list.remove(0);
    	
		return list;
    }
    
    @RequestMapping(value="/selectUmd")
    @ResponseBody
    public List<ExtractVO> umdView(HttpServletRequest request, ExtractVO vo) throws Exception {
    	String sigungu = request.getParameter("sigunguCode");
    	List<ExtractVO> list = extractService.umdBjdongCode(sigungu);
    	list.remove(0);
    	
		return list;
    }
    
    @RequestMapping(value="/selectLi")
    @ResponseBody
    public List<ExtractVO> liView(HttpServletRequest request, ExtractVO vo) throws Exception {
    	String umd = request.getParameter("umdCode");
    	List<ExtractVO> list = extractService.liBjdongCode(umd);
    	list.remove(0);
    	
		return list;
    }
    
    /**
     * 추출 진행
     * @param vo
     * @throws Exception
     */
    @RequestMapping("/executingExtract")
    public String executeExtraction(MonitoringVO vo,HttpServletRequest request) throws Exception {
    	
    	String tableEngNm = request.getParameter("tableEngNm");
    	String extrcScope = request.getParameter("extrcScope");
    	String extrcLo = request.getParameter("extrcLo");
    	String dataGb = request.getParameter("dataGb");
    	
    	//테이블 영어이름
    	String[] table = null;
    	table = tableEngNm.split(",");
    	//첫번째 넘어오는 빈값 지우기 위해 list로 치환
    	List<String> finalATable = new ArrayList<String>();
    	Collections.addAll(finalATable, table);
    	finalATable.remove(0);
    	//string args[]에 넘겨주기 위해 다시 배열로 치환
    	String[] finalBTable = finalATable.toArray(new String[finalATable.size()]);
    	
    	//추출범위코드
    	String[] scope = null;
    	scope = extrcScope.split(",");
    	List<String> finalAScope = new ArrayList<String>();
    	Collections.addAll(finalAScope, scope);
    	finalAScope.remove(0);
    	String[] finalBScope = finalAScope.toArray(new String[finalAScope.size()]);
    	
    	//추출지역코드
    	String[] location = null;
    	location = extrcLo.split(",");
    	List<String> finalALocation = new ArrayList<String>();
    	Collections.addAll(finalALocation, location);
    	finalALocation.remove(0);
    	String[] finalBLocation = finalALocation.toArray(new String[finalALocation.size()]);
    	
    	//데이터 유형코드
    	String[] dataTy = null;
    	dataTy = dataGb.split(",");
    	List<String> finalADataTy = new ArrayList<String>();
    	Collections.addAll(finalADataTy, dataTy);
    	finalADataTy.remove(0);
    	String[] finalBDataTy = finalADataTy.toArray(new String[finalADataTy.size()]);
    	
    	//finalTable, finalScope, finalLocation, finalDataTy
    	
    	String args[] = new String[4];
    	
    	CallExtraction executingExtrc = new CallExtraction();
    	
    	for(int i=0; i<finalBTable.length; i++) {
    		//추출실행
    		args[0] = finalBDataTy[i];
    		args[1] = finalBTable[i];
    		args[2] = finalBScope[i];
    		args[3] = finalBLocation[i];
    		
    		/////////////jar파일 실행
    		executingExtrc.call(args[0], args[1], args[2], args[3]);
    	}
    	
    	return "redirect:/extractMonitoring";
    	
    }
    
}