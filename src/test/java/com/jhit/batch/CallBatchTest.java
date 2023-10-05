package com.jhit.batch;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CallBatchTest {
	
	private static final Logger log = LoggerFactory.getLogger(CallBatchTest.class);

	
	/**
	 * command line
	 * 
	 *  java -jar CallCrawlingStep.jar Test 
	 *  
	 *  java -jar CallCrawlingStep.jar Test; S:\sts-4.9.0.RELEASE\configuration\org.eclipse.osgi\573\0\.cp\dependency\slf4j-api-1.7.30.jar;S:\sts-4.9.0.RELEASE\configuration\org.eclipse.osgi\573\0\.cp\dependency\slf4j-simple-1.7.30.jar
	 *  
	 *  S:\git\repository\construct.open.db\construct.open.db\jhit.construct.open.db\src\main\java\com\jhit>java -jar CallCrawlingStep.jar; 
	 *  C:\Users\wndgu\.gradle\caches\modules-2\files-2.1\org.slf4j\slf4j-api\1.7.30\b5a4b6d16ab13e34a88fae84c35cd5d68cac922c\slf4j-api-1.7.30.jar; 
	 *  C:\Users\wndgu\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.13.3\ec1508160b93d274b1add34419b897bae84c6ca9\log4j-api-2.13.3.jar;
	 *  
	 */
	@Test
	public void call() throws Exception {
		//S:\git\repository\construct.open.db\construct.open.db\jhit.construct.open.db\src\main\java\com\jhit
		ProcessBuilder processBuilder = new ProcessBuilder("java", "-jar" ,"CallCrawlingStep.jar", "Test");
		
		String path = "S:\\git\\repository\\construct.open.db\\construct.open.db\\jhit.construct.open.db\\src\\main\\java\\com\\jhit";
		//ProcessBuilder processBuilder = new ProcessBuilder("java", "-jar","-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5500" ,"CallCrawlingStep.jar");
		//C:\Users\wndgu\.gradle\caches\modules-2\files-2.1\org.slf4j\slf4j-api\1.7.30\b5a4b6d16ab13e34a88fae84c35cd5d68cac922c\slf4j-api-1.7.30.jar
		
		processBuilder.directory(new File(path));
		Process process = processBuilder.start();
		
		
//		StringBuilder output = new StringBuilder();
//
//        BufferedReader reader = new BufferedReader(
//                new InputStreamReader(process.getInputStream()));
//
//        String line;
//        while ((line = reader.readLine()) != null) {
//            output.append(line + "\n");
//        }
//
//        int exitVal = process.waitFor();
//        
//        if (exitVal == 0) {
//            System.out.println("Success!");
//            System.out.println(output);
//            System.exit(0);
//        } else {
//            //abnormal...
//        }
//		
		
		log.debug("call");
	}
	
}
