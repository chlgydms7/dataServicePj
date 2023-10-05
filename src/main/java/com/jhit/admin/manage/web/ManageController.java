package com.jhit.admin.manage.web;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhit.admin.manage.service.ManageService;
import com.jhit.admin.manage.vo.ManageVO;
import com.jhit.common.vo.PagingVO;

@Controller
@RequestMapping(value = "/")
public class ManageController {

    @Autowired
    private ManageService manageService;
    
    /**
     * 오픈마켓 목록화면 조회
     * @return param, request
     * @throws Exception
     */
    @RequestMapping(value="/openList")
    public ModelAndView openView(@RequestParam(value="searchCondition", required = false)String searchCondition, @RequestParam(value="searchKeyword", required = false)String searchKeyword,
    											@RequestParam(value="nowPage", required = false)String nowPage, PagingVO pagingvo, HttpServletRequest request, ManageVO vo) throws Exception {
    	
    	pagingvo.setCntPerPage(10); //한페이지당 보여줄 게시글수
    	
    	int cntPerPage = pagingvo.getCntPerPage();
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	param.put("searchCondition", searchCondition);
    	param.put("searchKeyword", searchKeyword);
    	
    	int total = manageService.openTotalCount(param);
    	
    	if (nowPage == null) {
    		nowPage = "1";
    	}
    	
    	pagingvo = new PagingVO(total, Integer.parseInt(nowPage), cntPerPage);
    	
    	int start = pagingvo.getStart();
    	int end = pagingvo.getEnd();
    	
    	param.put("start", start);
    	param.put("end", end);
    	
    	List<ManageVO> lists = manageService.selectOpenList(param);
    	ModelAndView mav = new ModelAndView(); 
    	
    	mav.setViewName("admin/data/open/dataList");
    	mav.addObject("lists", lists);
    	mav.addObject("totalCount", total);
    	mav.addObject("paging", pagingvo);
    	mav.addObject("vo", vo);
    	
        return mav;
    }
    
    /**
     * 국가중점메타데이터 목록화면 조회
     * @return param, request
     * @throws Exception
     */
    @RequestMapping(value="/nationList")
    public ModelAndView nationView(@RequestParam(value="nowPage", required = false)String nowPage, PagingVO pagingvo, HttpServletRequest request, ManageVO vo) throws Exception {
    	
    	pagingvo.setCntPerPage(10); //한페이지당 보여줄 게시글수
    	
    	int cntPerPage = pagingvo.getCntPerPage();
    	String searchCondition = request.getParameter("searchCondition");
    	String searchKeyword = request.getParameter("searchKeyword");
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	if(!("").equals(searchKeyword) && !("").equals(searchCondition)) {
    		param.put("searchCondition", searchCondition);
    		param.put("searchKeyword", searchKeyword);
    	}
    	
    	int total = manageService.nationTotalCount(param);
    	
    	if (nowPage == null) {
    		nowPage = "1";
    	}
    	
    	pagingvo = new PagingVO(total, Integer.parseInt(nowPage), cntPerPage);
    	
    	int start = pagingvo.getStart();
    	int end = pagingvo.getEnd();
    	
    	param.put("start", start);
    	param.put("end", end);
    	
    	List<ManageVO> lists = manageService.selectNationList(param);
    	ModelAndView mav = new ModelAndView(); 
    	
    	mav.setViewName("admin/data/nation/dataList");
    	mav.addObject("lists", lists);
    	mav.addObject("totalCount", total);
    	mav.addObject("paging", pagingvo);
    	mav.addObject("vo", vo);
    	
        return mav;
    }
    
    /**
     * 건축데이터개방 목록화면 조회
     * @return param, request
     * @throws Exception
     */
    @RequestMapping(value="/constList")
    public ModelAndView constView(@RequestParam(value="searchCondition", required = false)String searchCondition, @RequestParam(value="searchKeyword", required = false)String searchKeyword,
    											@RequestParam(value="nowPage", required = false)String nowPage, PagingVO pagingvo, HttpServletRequest request, ManageVO vo) throws Exception {
    	
    	pagingvo.setCntPerPage(10); //한페이지당 보여줄 게시글수
    	
    	int cntPerPage = pagingvo.getCntPerPage();
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	param.put("searchCondition", searchCondition);
    	param.put("searchKeyword", searchKeyword);
    	
    	int total = manageService.constTotalCount(param);
    	
    	if (nowPage == null) {
    		nowPage = "1";
    	}
    	
    	pagingvo = new PagingVO(total, Integer.parseInt(nowPage), cntPerPage);
    	
    	int start = pagingvo.getStart();
    	int end = pagingvo.getEnd();
    	
    	param.put("start", start);
    	param.put("end", end);
    	
    	List<ManageVO> lists = manageService.selectConstList(param);
    	ModelAndView mav = new ModelAndView(); 
    	
    	mav.setViewName("admin/data/const/dataList");
    	mav.addObject("lists", lists);
    	mav.addObject("totalCount", total);
    	mav.addObject("paging", pagingvo);
    	mav.addObject("vo", vo);
    	
        return mav;
    }
    
    /**
     * 오픈마켓 상세정보화면 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/openDetailView")
	    public ModelAndView openDetailView(HttpServletRequest request) throws Exception {
		    String dataId = request.getParameter("dataId");
		    String nowPage = request.getParameter("nowPage");
		    String searchCondition = request.getParameter("searchCondition");
		    String searchKeyword = request.getParameter("searchKeyword");
		   
		    ManageVO vo = manageService.selectOpenDetail(dataId);
		   
		    ModelAndView mav = new ModelAndView();
	    	
	    	mav.setViewName("admin/data/open/detailView");
	    	mav.addObject("list", vo);
	    	mav.addObject("nowPage", nowPage);
	    	mav.addObject("searchCondition", searchCondition);
	    	mav.addObject("searchKeyword", searchKeyword);
	        return mav;
	    }
	
	/**
     * 국가중점메타데이터 상세정보화면 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/nationDetailView")
	    public ModelAndView nationDetailView(HttpServletRequest request) throws Exception {
		    String metdataId = request.getParameter("metdataId");
		    String nowPage = request.getParameter("nowPage");
		    String searchCondition = request.getParameter("searchCondition");
		    String searchKeyword = request.getParameter("searchKeyword");
		   
		    ManageVO vo = manageService.selectNationDetail(metdataId);
		   
		    ModelAndView mav = new ModelAndView();
	    	
	    	mav.setViewName("admin/data/nation/detailView");
	    	mav.addObject("list", vo);
	    	mav.addObject("nowPage", nowPage);
	    	mav.addObject("searchCondition", searchCondition);
	    	mav.addObject("searchKeyword", searchKeyword);
	        return mav;
	    }
	
	/**
     * 건축데이터개방 상세정보화면 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/constDetailView")
	    public ModelAndView manageDetailView(HttpServletRequest request) throws Exception {
		    String dataNm = request.getParameter("dataNm");
		    String nowPage = request.getParameter("nowPage");
		    String searchCondition = request.getParameter("searchCondition");
		    String searchKeyword = request.getParameter("searchKeyword");
		   
		    ManageVO vo = manageService.selectConstDetail(dataNm);
		   
		    ModelAndView mav = new ModelAndView();
	    	
	    	mav.setViewName("admin/data/const/detailView");
	    	mav.addObject("list", vo);
	    	mav.addObject("nowPage", nowPage);
	    	mav.addObject("searchCondition", searchCondition);
	    	mav.addObject("searchKeyword", searchKeyword);
	        return mav;
	    }
	
    /**
     * 오픈마켓 등록화면 조회
     * @param request, authentication, response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/openInsertView")
    public ModelAndView openInsertView(HttpServletRequest request,Authentication authentication, HttpServletResponse response) throws Exception {
    	
    	ModelAndView mav = new ModelAndView();
    	
    	List<ManageVO> dta001 = manageService.codeInfo("DTA001"); //좌표계
    	List<ManageVO> dta002 = manageService.codeInfo("DTA002"); //좌표계
    	List<ManageVO> dta003 = manageService.codeInfo("DTA003"); //좌표계
//    	List<ManageVO> dta004 = manageService.codeInfo("DTA004"); //기관
    	List<ManageVO> dta007 = manageService.codeInfo("DTA007"); //갱신주기
    	List<ManageVO> dta009 = manageService.codeInfo("DTA009"); //지리적범위
    	List<ManageVO> dta015 = manageService.codeInfo("DTA015"); //데이터 형식
    	List<ManageVO> dta016 = manageService.codeInfo("DTA016"); //데이터 형식
    	List<ManageVO> dta017 = manageService.codeInfo("DTA017"); //데이터 형식
    	List<ManageVO> dta018 = manageService.codeInfo("DTA018"); //데이터 형식
    	
    	List<ManageVO> seOrgan = manageService.selectSeOrgan();
    	
    	mav.addObject("id", authentication.getName());
    	mav.addObject("seOrgan", seOrgan);
    	mav.addObject("dta001", dta001);
    	mav.addObject("dta002", dta002);
    	mav.addObject("dta003", dta003);
//    	mav.addObject("dta004", dta004);
    	mav.addObject("dta007", dta007);
    	mav.addObject("dta009", dta009);
    	mav.addObject("dta015", dta015);
    	mav.addObject("dta016", dta016);
    	mav.addObject("dta017", dta017);
    	mav.addObject("dta018", dta018);
    	mav.setViewName("admin/data/open/insertView");
    	
		return mav;
    }
    
    /**
     * 국가중점메타데이터 등록화면 조회
     * @param request, authentication, response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/nationBInsertView")
    public ModelAndView nationBInsertView(HttpServletRequest request,Authentication authentication, HttpServletResponse response) throws Exception {
    	
    	ModelAndView mav = new ModelAndView();
    	
    	List<ManageVO> nationData = manageService.selectNationData();
    	
    	List<ManageVO> dta003 = manageService.codeInfo("DTA003"); //좌표계
    	List<ManageVO> dta004 = manageService.codeInfo("DTA004"); //기관
    	List<ManageVO> dta005 = manageService.codeInfo("DTA005"); //부서
    	List<ManageVO> dta006 = manageService.codeInfo("DTA006"); //수집주기
    	List<ManageVO> dta007 = manageService.codeInfo("DTA007"); //갱신주기
    	List<ManageVO> dta009 = manageService.codeInfo("DTA009"); //지리적범위
    	List<ManageVO> dta015 = manageService.codeInfo("DTA015"); //데이터 형식
    	
    	mav.addObject("id", authentication.getName());
    	mav.addObject("nationData", nationData);
    	mav.addObject("dta003", dta003);
    	mav.addObject("dta004", dta004);
    	mav.addObject("dta005", dta005);
    	mav.addObject("dta006", dta006);
    	mav.addObject("dta007", dta007);
    	mav.addObject("dta009", dta009);
    	mav.addObject("dta015", dta015);
    	mav.setViewName("admin/data/nation/insertView");
    	
		return mav;
    }
    
    /**
     * 건축데이터개방 등록화면 조회
     * @param request, authentication, response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/constInsertView")
    public ModelAndView constInsertView(HttpServletRequest request,Authentication authentication, HttpServletResponse response) throws Exception {
    	
    	ModelAndView mav = new ModelAndView();
    	
    	List<ManageVO> dta007 = manageService.codeInfo("DTA007"); //갱신주기
    	
    	mav.addObject("id", authentication.getName());
    	mav.addObject("dta007", dta007);
    	mav.setViewName("admin/data/const/insertView");
    	
		return mav;
    }
    
    /**
     * 국가중점데이터 등록화면 조회
     * @param request, authentication, response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/nationAInsertView")
    public ModelAndView nationAInsertView(HttpServletRequest request,Authentication authentication, HttpServletResponse response) throws Exception {
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("id", authentication.getName());
    	mav.setViewName("admin/data/nation/insertNationData");
    	
		return mav;
    }
    
    /**
     * 오픈마켓 구분조직 등록화면 조회
     * @param request, authentication, response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/seOrganInsertView")
    public ModelAndView seOrganInsertView(HttpServletRequest request,Authentication authentication, HttpServletResponse response) throws Exception {
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("id", authentication.getName());
    	mav.setViewName("admin/data/open/insertSeOrganData");
    	
		return mav;
    }
    
    @RequestMapping(value="/nationADataInsert")
    public void nationDataInsert(ManageVO vo) throws Exception {
    	manageService.insertOpenData(vo);
    }
    
    @RequestMapping(value="/insertSeOrganData")
    public void seOrganInsert(ManageVO vo, HttpServletResponse response) throws Exception {
    	manageService.insertSeOrganData(vo);
    	StringBuffer sb = new StringBuffer();
    	
    	sb.append("<script type='text/javascript'>");
    	sb.append("opener.location.reload();");
    	sb.append("window.close();");
    	sb.append("</script>");
    	
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out  = response.getWriter();
    	out.print(sb);
    	out.flush();
    }
    
    @RequestMapping(value="/openDataInsert")
    public String openInsert(ManageVO vo) throws Exception {
    	manageService.insertOpenData(vo);
        return "redirect:/openList";
    }
    
    @RequestMapping(value="/nationBDataInsert")
    public String nationInsert(ManageVO vo) throws Exception {
    	manageService.insertNationBData(vo);
        return "redirect:/nationList";
    }
    
    @RequestMapping(value="/insertNationAData")
    public void nationAInsert(ManageVO vo, HttpServletResponse response) throws Exception {
    	manageService.insertNationAData(vo);
    	StringBuffer sb = new StringBuffer();
    	
    	sb.append("<script type='text/javascript'>");
    	sb.append("opener.location.reload();");
    	sb.append("window.close();");
    	sb.append("</script>");
    	
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out  = response.getWriter();
    	out.print(sb);
    	out.flush();
    }
    
    @RequestMapping(value="/constDataInsert")
    public String constInsert(ManageVO vo) throws Exception {
    	manageService.insertConstData(vo);
        return "redirect:/constList";
    }
   
    /**
     * 오픈마켓 수정화면 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateOpenView")
	   public ModelAndView openUpdateView(HttpServletRequest request) throws Exception {
	   	
			String nowPage = request.getParameter("nowPage");
		    ManageVO vo = manageService.selectOpenDetail(request.getParameter("dataId"));
		    List<ManageVO> seOrgan = manageService.selectSeOrgan();
		   
		    List<ManageVO> dta001 = manageService.codeInfo("DTA001"); //좌표계
	    	List<ManageVO> dta002 = manageService.codeInfo("DTA002"); //좌표계
	    	List<ManageVO> dta003 = manageService.codeInfo("DTA003"); //좌표계
//	    	List<ManageVO> dta004 = manageService.codeInfo("DTA004"); //기관
	    	List<ManageVO> dta007 = manageService.codeInfo("DTA007"); //갱신주기
	    	List<ManageVO> dta009 = manageService.codeInfo("DTA009"); //지리적범위
	    	List<ManageVO> dta015 = manageService.codeInfo("DTA015"); //데이터 형식
	    	List<ManageVO> dta016 = manageService.codeInfo("DTA016"); //기본공간정보 대분류
	    	List<ManageVO> dta017 = manageService.codeInfo("DTA017"); //기본공간정보 중분류
	    	List<ManageVO> dta018 = manageService.codeInfo("DTA018"); //기본공간정보 소분류
	    	
		   	ModelAndView mav = new ModelAndView();
		   	
		   	mav.setViewName("admin/data/open/updateView");
		   	mav.addObject("nowPage", nowPage);
		   	mav.addObject("list", vo);
		   	mav.addObject("seOrgan", seOrgan);
		   	mav.addObject("dta001", dta001);
	    	mav.addObject("dta002", dta002);
	    	mav.addObject("dta003", dta003);
//	    	mav.addObject("dta004", dta004);
	    	mav.addObject("dta007", dta007);
	    	mav.addObject("dta009", dta009);
	    	mav.addObject("dta015", dta015);
	    	mav.addObject("dta016", dta016);
	    	mav.addObject("dta017", dta017);
	    	mav.addObject("dta018", dta018);
		    return mav;
	   }
	
    /**
     * 국가중점메타데이터 수정화면 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateNationView")
	   public ModelAndView nationUpdateView(HttpServletRequest request) throws Exception {
	   	
			String nowPage = request.getParameter("nowPage");
		    ManageVO vo = manageService.selectNationDetail(request.getParameter("metdataId"));
		    List<ManageVO> nationData = manageService.selectNationData();
		    
		    List<ManageVO> dta003 = manageService.codeInfo("DTA003"); //좌표계
	    	List<ManageVO> dta004 = manageService.codeInfo("DTA004"); //기관
	    	List<ManageVO> dta005 = manageService.codeInfo("DTA005"); //부서
	    	List<ManageVO> dta006 = manageService.codeInfo("DTA006"); //수집주기
	    	List<ManageVO> dta007 = manageService.codeInfo("DTA007"); //갱신주기
	    	List<ManageVO> dta009 = manageService.codeInfo("DTA009"); //지리적범위
	    	List<ManageVO> dta015 = manageService.codeInfo("DTA015"); //데이터 형식
		   
		   	ModelAndView mav = new ModelAndView();
		   	
		   	mav.setViewName("admin/data/nation/updateView");
		   	mav.addObject("list", vo);
		   	mav.addObject("nowPage", nowPage);
		   	mav.addObject("nationData", nationData);
	    	mav.addObject("dta003", dta003);
	    	mav.addObject("dta004", dta004);
	    	mav.addObject("dta005", dta005);
	    	mav.addObject("dta006", dta006);
	    	mav.addObject("dta007", dta007);
	    	mav.addObject("dta009", dta009);
	    	mav.addObject("dta015", dta015);
		    return mav;
	   }
	
    /**
     * 건축데이터개방 수정화면 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateConstView")
	   public ModelAndView constUpdateView(HttpServletRequest request) throws Exception {
	   		
			String nowPage = request.getParameter("nowPage");
		    ManageVO vo = manageService.selectConstDetail(request.getParameter("dataNm"));
		   
		   	ModelAndView mav = new ModelAndView();
		   	
		   	List<ManageVO> dta007 = manageService.codeInfo("DTA007"); //갱신주기
		   	
		   	mav.setViewName("admin/data/const/updateView");
		   	mav.addObject("list", vo);
		   	mav.addObject("nowPage", nowPage);
		   	mav.addObject("dta007", dta007);
		    return mav;
	   }
   
	/**
	 * 오픈마켓 수정
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateOpenData")
	   public String openUpdate(ManageVO vo, Authentication authentication) throws Exception {
			vo.setUpdusrId(authentication.getName());
			manageService.updateOpenData(vo);
		    return "forward:/openDetailView";
	   }
	
	/**
	 * 국가중점데이터 수정
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateNationData")
	   public String nationUpdate(ManageVO vo, Authentication authentication) throws Exception {
			vo.setUpdusrId(authentication.getName());
			manageService.updateNationData(vo);
		    return "forward:/nationDetailView";
	   }
	
	/**
	 * 건축데이터개방 수정
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateConstData")
	   public String constUpdate(ManageVO vo, Authentication authentication) throws Exception {
			vo.setUpdusrId(authentication.getName());
			manageService.updateConstData(vo);
		    return "forward:/constDetailView";
	   }
	   
	   @RequestMapping(value="/deleteOpenData")
	   public String openDelete(String dataId) throws Exception {
			manageService.deleteOpenData(dataId);
		    return "redirect:/openList";
	   }
	   
	   @RequestMapping(value="/deleteNationData")
	   public String nationDelete(String metdataId) throws Exception {
			   manageService.deleteNationData(metdataId);
		       return "redirect:/nationList";
	   }
	   
	   @RequestMapping(value="/deleteConstData")
	   public String constDelete(String dataNm) throws Exception {
			   manageService.deleteConstData(dataNm);
		       return "redirect:/constList";
	   }
}