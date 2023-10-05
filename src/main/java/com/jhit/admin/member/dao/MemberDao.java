package com.jhit.admin.member.dao;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.jhit.admin.member.vo.MemberVO;

@Repository
public interface MemberDao {
	
	Optional<MemberVO> findById(String id);
    
}