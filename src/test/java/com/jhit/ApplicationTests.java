package com.jhit;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
class ApplicationTests {

	@Test
	void contextLoads() {
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();	    
	    System.out.println("encoder pw : " + encoder.encode("jhit1128!"));
		
	}

}
