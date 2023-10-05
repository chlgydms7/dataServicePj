package com.jhit.admin.call;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class CallExtraction {
	
	private static final Logger log = LoggerFactory.getLogger(CallExtraction.class);

	
	public void call(String dataGb, String tableNm, String scope, String location) throws Exception {
//		ProcessBuilder builder = new ProcessBuilder("java", "-Xms512m" , "-XX:+UseParallelGC", "-cp :/data/app/jhit.construct.open.db/BOOT-INF/lib/*:/data/app/jhit.construct.open.db/BOOT-INF/classes/", "com.jhit.DataLoaderApplication");
		
		try {
			
			boolean isWindows = System.getProperty("os.name").toLowerCase().startsWith("windows");
			
			List<String> cmdLine = new ArrayList<String>();
			
			ProcessBuilder builder = new ProcessBuilder();
			
			if (isWindows) {
				cmdLine.add("cmd");
				cmdLine.add("/c");
				cmdLine.add("S:\\sts-4.9.0.RELEASE\\plugins\\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_15.0.1.v20201027-0507\\jre\\bin\\java -Xms512m -Xmx1024m -XX:+UseParallelGC -cp S:\\git\\repository\\construct.open.db\\jhit.construct.open.db\\bin\\main;S:\\lib\\*; com.jhit.RealtimeDataExtraction "+dataGb+ " " +tableNm+" "+scope+" "+location);
    			
    			builder.command(cmdLine);
    			builder.redirectOutput(ProcessBuilder.Redirect.INHERIT);
    			builder.redirectError(ProcessBuilder.Redirect.INHERIT);
    			builder.redirectInput(ProcessBuilder.Redirect.INHERIT);
    			
        	}else {
        		cmdLine.add("java");
    			cmdLine.add("-Xms512m");
    			cmdLine.add("-Xmx1024m");
    			cmdLine.add("-XX:+UseParallelGC");
    			cmdLine.add("-cp");
    			cmdLine.add(":/data/app/jhit.construct.open.db/BOOT-INF/lib/*:/data/app/jhit.construct.open.db/BOOT-INF/classes/");
    			cmdLine.add("com.jhit.RealtimeDataExtraction");
    			cmdLine.add(dataGb);
    			cmdLine.add(tableNm);
    			cmdLine.add(scope);
    			cmdLine.add(location);
    			
    			builder.command(cmdLine);
    			builder.redirectOutput(ProcessBuilder.Redirect.INHERIT);
    			builder.redirectError(ProcessBuilder.Redirect.INHERIT);
    			builder.redirectInput(ProcessBuilder.Redirect.INHERIT);
        	}
			
//			ProcessBuilder builder = new ProcessBuilder();
			
//			builder.command(cmdLine);
//			builder.redirectOutput(ProcessBuilder.Redirect.INHERIT);
//			builder.redirectError(ProcessBuilder.Redirect.INHERIT);
//			builder.redirectInput(ProcessBuilder.Redirect.INHERIT);
			
			Process process = builder.start();
			int exitCode = process.waitFor();
			
			log.debug("exitCode : " + exitCode);
		} catch (Exception e) {
			log.error(e.toString());
		}
		
	}
	
}
