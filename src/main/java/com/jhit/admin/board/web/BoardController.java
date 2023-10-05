package com.jhit.admin.board.web;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhit.admin.board.service.BoardService;
import com.jhit.admin.board.vo.BoardVO;
import com.jhit.common.vo.PagingVO;

@Controller
@RequestMapping(value = "/")
public class BoardController {

    @Autowired
    private BoardService boardService;
    
    /**
     * 게시판 목록화면 조회
     * @return param, request
     * @throws Exception
     */
    @RequestMapping(value="/boardList")
    public ModelAndView boardView(@RequestParam(value="searchCondition", required = false)String searchCondition, @RequestParam(value="searchKeyword", required = false)String searchKeyword,
    											@RequestParam(value="nowPage", required = false)String nowPage, PagingVO pagingvo, HttpServletRequest request) throws Exception {
    	
    	
    	pagingvo.setCntPerPage(5); //한페이지당 보여줄 게시글수
    	//BoardVO vo = new BoardVO();
//    	vo.setUserId("admin");
    	
    	int cntPerPage = pagingvo.getCntPerPage();
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	param.put("searchCondition", searchCondition);
    	param.put("searchKeyword", searchKeyword);
    	
    	int total = boardService.totalCount(param);
    	
    	if (nowPage == null) {
    		nowPage = "1";
    	}
    	
    	pagingvo = new PagingVO(total, Integer.parseInt(nowPage), cntPerPage);
    	
    	int start = pagingvo.getStart();
    	int end = pagingvo.getEnd();
    	
    	param.put("start", start);
    	param.put("end", end);
    	
    	List<BoardVO> lists = boardService.selectList(param);
    	ModelAndView mav = new ModelAndView(); 
    	
    	mav.setViewName("admin/board/boardList");
    	mav.addObject("lists", lists);
    	mav.addObject("totalCount", total);
    	mav.addObject("paging", pagingvo);
    	
        return mav;
    }
    
    /**
     * 게시판 등록화면 조회
     * @param request, authentication, response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/insertView")
    public ModelAndView boardInsertView(HttpServletRequest request,Authentication authentication, HttpServletResponse response) throws Exception {
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("id", authentication.getName());
    	mav.setViewName("admin/board/insertView");
    	
		return mav;
    }
    
    @RequestMapping(value="/insertData")
    public String boardInsert(BoardVO vo) throws Exception {
    	boardService.insertData(vo);
        return "redirect:/boardList";
    }
    
   /**
    * 게시물 상세정보화면 조회
 * @param request
 * @return
 * @throws Exception
 */
@RequestMapping(value="/detailView")
    public ModelAndView boardDetailView(HttpServletRequest request) throws Exception {
	    String idx = request.getParameter("idx");
	   
	    BoardVO vo = boardService.selectDetail(Integer.parseInt(idx));
	   
	    ModelAndView mav = new ModelAndView();
    	
    	mav.setViewName("admin/board/detailView");
    	mav.addObject("list", vo);
        return mav;
    }
   
   /**
    * 게시물 수정화면 조회
 * @param request
 * @return
 * @throws Exception
 */
@RequestMapping(value="/updateView")
   public ModelAndView boardUpdateView(HttpServletRequest request) throws Exception {
   	
	    BoardVO vo = boardService.selectDetail(Integer.parseInt(request.getParameter("idx")));
	   
	   	ModelAndView mav = new ModelAndView();
	   	
	   	mav.setViewName("admin/board/updateView");
	   	mav.addObject("list", vo);
	    return mav;
   }
   
   @RequestMapping(value="/updateData")
   public String boardUpdate(BoardVO vo) throws Exception {
		   boardService.updateData(vo);
	       return "forward:/detailView";
   }
   
   @RequestMapping(value="/deleteData")
   public String boardDelete(int idx) throws Exception {
		   boardService.deleteData(idx);
	       return "redirect:/boardList";
   }
}