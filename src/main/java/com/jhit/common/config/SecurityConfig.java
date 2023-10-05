package com.jhit.common.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.jhit.admin.member.service.MemberService;

// Spring Security 적용
// 참고 : https://bamdule.tistory.com/53
// 참고 : https://shinsunyoung.tistory.com/78

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
    private MemberService memberService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**" , "/error");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

    	// 로그인 세션 있는 사용자만 접근 가능한 url 설정    	
		
//		  http.authorizeRequests() .antMatchers("/member/**").authenticated()
//		  .antMatchers("/admin/**").authenticated() .antMatchers("/**").permitAll();
		 		 
        
		/*
		 * http.authorizeRequests() .antMatchers("/**").permitAll();
		 */
    	
        http.authorizeRequests()
        .antMatchers("/login", "/signup").permitAll() // 누구나 접근 허용
        .anyRequest().authenticated(); // 나머지 요청들은 권한의 종류에 상관 없이 권한이 있어야 접근 가능

        // 로그인 설정
        http.formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/")
                .permitAll()
                .failureUrl("/loginerror");

        // 로그아웃 설정
        http.logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        		.logoutUrl("/logout")
                .logoutSuccessUrl("/");
//              .invalidateHttpSession(true)
//        		.deleteCookies("JSESSIONID");

        // 권한 없을 경우 return 페이지 설정
        http.exceptionHandling().accessDeniedPage("/login");
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(memberService).passwordEncoder(passwordEncoder());
    }

}
