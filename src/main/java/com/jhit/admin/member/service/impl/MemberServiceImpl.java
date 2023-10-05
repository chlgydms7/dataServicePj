package com.jhit.admin.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.jhit.admin.member.dao.MemberDao;
import com.jhit.admin.member.service.MemberService;
import com.jhit.admin.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDao memberDao;

    /**
     * Spring Security 필수 메소드 구현
     *
     * @param id 아이디
     * @return UserDetails
     * @throws UsernameNotFoundException 유저가 없을 때 예외 발생
     */
    // 기본적인 반환 타입은 UserDetails, UserDetails를 상속받은 MemberVO로 반환 타입 지정 (자동으로 다운 캐스팅됨)
    // 시큐리티에서 지정한 서비스이기 때문에 이 메소드를 필수로 구현
    @Override 
    public MemberVO loadUserByUsername(String id) throws UsernameNotFoundException {    	
    	return memberDao.findById(id).orElseThrow(() -> new UsernameNotFoundException((id)));
    }    
    
}