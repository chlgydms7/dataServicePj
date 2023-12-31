package com.jhit.admin.loader.web;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jhit.admin.loader.service.LoaderService;
import com.jhit.admin.loader.vo.LoaderVO;
import com.jhit.common.vo.PagingVO;

@Controller
@RequestMapping(value = "/")
public class LoaderController {

    @Autowired
    private LoaderService loaderService;
    
    /**
     * 크롤링 목록화면 조회
     * @return param, pagingvo, request, vo
     * @throws Exception
     */
    @RequestMapping(value="/monitorLoader")
    public ModelAndView crawlingListView(@RequestParam(value="searchCondition", required = false)String searchCondition, @RequestParam(value="searchKeyword", required = false)String searchKeyword,
    											@RequestParam(value="nowPage", required = false)String nowPage, PagingVO pagingvo, HttpServletRequest request, LoaderVO vo) throws Exception {
    	pagingvo.setCntPerPage(15); //한페이지당 보여줄 게시글수
    	
    	int cntPerPage = pagingvo.getCntPerPage();
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	if(searchKeyword != null && searchKeyword != "") {
    		if(searchCondition == "startStatus" || searchCondition == "endStatus") {
    			char tmp;
            	
            	for(int i=0; i<searchKeyword.length(); i++) {
            		
            		tmp = searchKeyword.charAt(i);
            		
            		if((97 <= tmp) && (tmp <= 122)) { //소문자인경우
            			searchKeyword = String.valueOf(tmp).toUpperCase();
            		}
            	}
    		}
    	}
    	
    	param.put("searchCondition", searchCondition);
    	param.put("searchKeyword", searchKeyword);
    	
    	int totalCount = loaderService.totalCount(param);
    	
    	if (nowPage == null) {
    		nowPage = "1";
    	}
    	
    	pagingvo = new PagingVO(totalCount, Integer.parseInt(nowPage), cntPerPage);
    	
    	int start = pagingvo.getStart();
    	int end = pagingvo.getEnd();
    	
    	param.put("start", start);
    	param.put("end", end);
    	
    	List<LoaderVO> lists = loaderService.selectList(param);
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.setViewName("admin/monitor/loader/loaderList");
    	mav.addObject("totalCount", totalCount);
    	mav.addObject("lists", lists);
    	mav.addObject("paging", pagingvo);
    	mav.addObject("vo", vo);
    	
    	return mav;
    }
    
    @RequestMapping(value="/loaderDetailView")
    @ResponseBody
    public LoaderVO loaderDetailView(HttpServletRequest request, LoaderVO vo) throws Exception {
    	int fileSn = Integer.parseInt(request.getParameter("jobExecutionId"));
    	LoaderVO detail = loaderService.selectDetail(105);
    	return detail;
    }
    
    /**
     * 크롤링 단계별 재진행
     * @param vo
     * @throws Exception
     */
    @RequestMapping("/retryLoaderPerStep")
    public void retryLoaderPerStep(LoaderVO vo) throws Exception {
    	String stepNm = vo.getStepNm();
    	String step = stepNm.substring(12);
    	
    	//JobLauncherController a = new JobLauncherController();
    	if("1".equals(step) || step == "1") {
    		step = "C1";
    		//a.callCrawlingStep(CrawlingEnum.C1, System.currentTimeMillis());
    	}else if("2".equals(step) || step == "2") {
    		step = "C2";
    		//a.callCrawlingStep(CrawlingEnum.C2, System.currentTimeMillis());
    	}else if("3".equals(step) || step == "3") {
    		step = "C3";
    	}else if("4".equals(step) || step == "4") {
    		step = "C4";
    	}else if("5".equals(step) || step == "5") {
    		step = "C5";
    	}else if("6".equals(step) || step == "6") {
    		step = "C6";
    	}
    	
    }
    
    
}