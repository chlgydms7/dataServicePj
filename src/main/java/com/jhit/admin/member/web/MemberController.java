package com.jhit.admin.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhit.admin.member.service.MemberService;
import com.jhit.admin.member.vo.MemberVO;

@Controller
@RequestMapping(value = "/")
public class MemberController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @GetMapping(value="/")
    public String mainView(MemberVO vo, HttpServletRequest request, Authentication authentication) {
    	
    	logger.debug("MemberController mainView start");
    	
    	HttpSession session = request.getSession();
    	
    	if(authentication!=null) {
    		session.setAttribute("userId", authentication.getName());
    		session.setAttribute("greeting", authentication.getName()+"님 반갑습니다.");
    	}
    	
    	return "admin/member/main";
    }

    @GetMapping(value="/login")
    public String loginView(HttpServletRequest request) {
        return "/admin/member/login";
    }
    
    @GetMapping(value="/loginerror")
    public String error() throws Exception {
        return "/admin/member/error";
    }
    
	@GetMapping(value="/logout")
    public String logout(HttpServletRequest request, HttpSession session) {
    	session.removeAttribute("id");
    	session.invalidate();
        return "redirect:/login";
    }
    
    @PreAuthorize("hasRole('ROLE_MEMBER')")
    @GetMapping("/member/info")
    public String userInfoView() {
        return "pages/user_info";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/admin")
    public String adminView() {
        return "pages/admin";
    }

    @GetMapping("/denied")
    public String deniedView() {
        return "pages/denied";
    }
    
}