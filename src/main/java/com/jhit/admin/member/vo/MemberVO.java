package com.jhit.admin.member.vo;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.jhit.common.vo.DefaultVO;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Data
@EqualsAndHashCode(callSuper=false)
public class MemberVO extends DefaultVO implements UserDetails {
	
	private static final long serialVersionUID = -2597942371643934197L;
	
	private String id;
	private String pw;
	private String name;
	private String auth;
	
	@Builder
	public MemberVO(String id, String pw,String auth) {
		this.id = id;
		this.pw = pw;
		this.auth = auth;
	}
	
	// 사용자의 권한을 콜렉션 형태로 반환
	// 단, 클래스 자료형은 GrantedAuthority를 구현해야함
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		Set<GrantedAuthority> roles = new HashSet<>();
		
		if(auth != null) {
			for (String role : auth.split(",")) {
				roles.add(new SimpleGrantedAuthority(role));
			}
		}
		
		return roles;
		
	}
	
	// 사용자의 password를 반환
	@Override
	public String getPassword() {
		return pw;
	}
	
	// 사용자의 id를 반환 (unique한 값)
	@Override
	public String getUsername() {
		return id;
	}
	
	// 계정 만료 여부 반환
	@Override
	public boolean isAccountNonExpired() {
		// 만료되었는지 확인하는 로직
	    return true; // true -> 만료되지 않았음
	}
	
	// 계정 잠금 여부 반환
	@Override
	public boolean isAccountNonLocked() {
		// 계정 잠금되었는지 확인하는 로직
	    return true; // true -> 잠금되지 않았음
	}
	
	// 패스워드의 만료 여부 반환
	@Override
	public boolean isCredentialsNonExpired() {
		// 패스워드가 만료되었는지 확인하는 로직
	    return true; // true -> 만료되지 않았음
	}
	
	// 계정 사용 가능 여부 반환
	@Override
	public boolean isEnabled() {
		// 계정이 사용 가능한지 확인하는 로직
	    return true; // true -> 사용 가능
	}
	
}