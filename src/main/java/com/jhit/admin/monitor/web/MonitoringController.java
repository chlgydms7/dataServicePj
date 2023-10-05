package com.jhit.admin.monitor.web;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Spliterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jhit.admin.monitor.service.MonitoringService;
import com.jhit.admin.monitor.vo.MonitoringVO;
import com.jhit.common.vo.PagingVO;

@Controller
@RequestMapping(value = "/")
public class MonitoringController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MonitoringService monitoringService;
    
    
    /**
     * 데이터적재 모니터링 목록화면 조회
     * @return param, pagingvo, request, vo
     * @throws Exception
     */
    @RequestMapping(value="/loaderMonitoring")
    public ModelAndView loaderListView(HttpServletRequest request, MonitoringVO vo) throws Exception {
    	String date = request.getParameter("date");
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	//오늘날짜
    	Calendar cal = Calendar.getInstance();
    	
    	String year = Integer.toString(cal.get(Calendar.YEAR));
    	String month = Integer.toString(cal.get(Calendar.MONTH) + 1);
    	String day = Integer.toString(cal.get(Calendar.DAY_OF_MONTH));
    	
    	if(month.length() == 1) month = "0"+month;
    	if(day.length() == 1) day = "0" + day;
    	
    	//오늘날짜로 검색
    	if(date == null) {
    		date = year+"-"+month+"-"+day;
    	}
    	
    	param.put("date", date);
    	
    	String loader = "";
    	String loaderId = "";
    	Timestamp loaderStartTime = null;
    	Timestamp loaderEndTime = null;
    	String jobInstanceId = "";
    	List<MonitoringVO> loaderDetail = null;
    	
    	List<MonitoringVO> lists = monitoringService.selectLoaderList(param);
    	
    	if(lists.size() != 0) {
    		for(int i=0; i<lists.size(); i++) {
        		if(("crawlingJob").equals(lists.get(i).getJobName())){
        			lists.get(i).setJobName("데이터 적재");
        			loader = lists.get(i).getJobName();
//        			jobInstanceId = lists.get(i).getJobInstanceId();
        			loaderEndTime = lists.get(i).getEndTime();
        		}
        	}
    		loaderStartTime = lists.get(0).getStartTime();
    	}
    	
    	int successCount = 0;
    	int failCount = 0;
    	
    	if(lists.size() != 0) {
//    		param.put("jobInstanceId", jobInstanceId);
        	
        	successCount = monitoringService.loaderSuccessCount(param); 
        	failCount = monitoringService.loaderFailCount(param);
    	}
    	
    	if(lists.size() != 0) {
    		loaderDetail = monitoringService.selectLoaderDetail(date);
    	}
    	
    	
//    	List<MonitoringVO> detailList = new ArrayList<MonitoringVO>();
//    	
//    	if(lists.size() != 0) {
//	    	for(int j=0; j<lists.size(); j++) {
//	    		
//	    		jobInstanceId = lists.get(j).getJobInstanceId();
//	    		loaderDetail = monitoringService.selectLoaderDetail(jobInstanceId);
//	    		detailList.addAll(loaderDetail);
//	    		
//	    		param.put("jobInstanceId", jobInstanceId);
//	        	successCount += monitoringService.loaderSuccessCount(param);
//	        	failCount += monitoringService.loaderFailCount(param);
//	    		
//	    	}
//    	}
    	
//		Integer[] arr = {1,1,1,3,2,1,2,3,1,2,1,2,4,3,3,3};
//				
//				Arrays.sort(arr);
//				List<List<Integer>> rtnList = new ArrayList<List<Integer>>();
//				List<Integer> tempList = new ArrayList<Integer>();
//				for(int i= 0 ; i<arr.length-1;i++) {
//					tempList.add(arr[i]);
//					if(arr[i]!=arr[i+1]) {
//						rtnList.add(tempList);
//						tempList = new ArrayList<Integer>();
//					}
//				}
//				if(arr[arr.length-1] == arr[arr.length-2]) {
//					tempList.add(arr[arr.length-1]);
//				}else {
//					tempList = new ArrayList<Integer>();
//					tempList.add(arr[arr.length-1]);
//				}
//				rtnList.add(tempList);
//				
//				//-----출력부-----
//				for(List<Integer> list : rtnList) {
//					System.out.println();
//					for(Integer i : list) {
//						System.out.print(i+ " ");
//					}
//				}
    	
    	if(loaderDetail != null) {
    		
    		for(int i=0; i<loaderDetail.size(); i++) {
    			
    			if(("crawlingAlStep1").equals(loaderDetail.get(i).getStepNm())) {
    				loaderDetail.get(i).setStepNm("국가공간정보포털 전체 속성");
    				loaderDetail.get(i).setStepCode("crawlingAlStep1");    				
    			}else if(("crawlingAlStep2").equals(loaderDetail.get(i).getStepNm())) {
    				loaderDetail.get(i).setStepNm("국가공간정보포털 전체 공간");
    				loaderDetail.get(i).setStepCode("crawlingAlStep2"); 
    			}else if(("crawlingAlStep3").equals(loaderDetail.get(i).getStepNm())) {
    				loaderDetail.get(i).setStepNm("오픈마켓");
    				loaderDetail.get(i).setStepCode("crawlingAlStep3");
    			}else if(("crawlingAlStep4").equals(loaderDetail.get(i).getStepNm())) {
    				loaderDetail.get(i).setStepNm("건축데이터개방");
    				loaderDetail.get(i).setStepCode("crawlingAlStep4");
    			}else if(("crawlingChStep1").equals(loaderDetail.get(i).getStepNm())) {
    				loaderDetail.get(i).setStepNm("국가공간정보포털 변동 속성");
    				loaderDetail.get(i).setStepCode("crawlingChStep1");
    			}else if(("crawlingChStep2").equals(loaderDetail.get(i).getStepNm())) {
    				loaderDetail.get(i).setStepNm("국가공간정보포털 변동 공간");
    				loaderDetail.get(i).setStepCode("crawlingChStep2");
    			}
    		}
    	}
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("loaderId", loaderId);
    	mav.addObject("loaderStartTime", loaderStartTime);
    	mav.addObject("loaderEndTime", loaderEndTime);
    	mav.addObject("date", date);
    	mav.addObject("successCount", successCount);
    	mav.addObject("failCount", failCount);
    	mav.addObject("loaderDetail", loaderDetail);
    	mav.setViewName("admin/monitor/loader/loaderMonitoringList");
    	
    	return mav;
    }
    
    /**
     * 데이터 추출 모니터링 목록화면 조회
     * @return param, pagingvo, request, vo
     * @throws Exception
     */
    @RequestMapping(value="/extractMonitoring")
    public ModelAndView extractListView(@RequestParam(value="searchDate", required = false)String searchDate ,@RequestParam(value="searchCondition", required = false)String searchCondition, @RequestParam(value="searchKeyword", required = false)String searchKeyword,
    											@RequestParam(value="nowPage", required = false)String nowPage, PagingVO pagingvo, HttpServletRequest request, MonitoringVO vo) throws Exception {
    	String date = request.getParameter("date");
    	
    	HashMap<String, Object> param = new HashMap<>();
    	
    	//오늘날짜
    	Calendar cal = Calendar.getInstance();
    	
    	String year = Integer.toString(cal.get(Calendar.YEAR));
    	String month = Integer.toString(cal.get(Calendar.MONTH) + 1);
    	String day = Integer.toString(cal.get(Calendar.DAY_OF_MONTH));
    	
    	if(month.length() == 1) month = "0"+month;
    	if(day.length() == 1) day = "0" + day;
    	
    	//오늘날짜로 검색
    	if(date == null) {
    		date = year+"-"+month+"-"+day;
    	}
    	
    	if(searchDate != null) {
    		date = searchDate;
    	}
    	
    	param.put("date", date);
    	param.put("searchKeyword", searchKeyword);
    	
    	String extract = "";
    	Timestamp extractStartTime = null;
    	Timestamp extractEndTime = null;
    	String jobExtractId = "";
    	List<MonitoringVO> extractDetail = null;
    	
    	List<MonitoringVO> list = new ArrayList<MonitoringVO>();
    	List<MonitoringVO> logList = monitoringService.selectExtrcLogDetail(param);
    	
    	if(logList.size() != 0) {
			extractStartTime = logList.get(0).getStartTime();
			extractEndTime = logList.get(logList.size()-1).getEndTime();
			
			for(int i =0; i < logList.size(); i++) {
				String ExtrcIc = monitoringService.selectLegaldongNm(logList.get(i).getExtrcIc());
				logList.get(i).setLegaldongNm(ExtrcIc);
				list.add(logList.get(i));
			}
			
    	}
    	
    	int successCount = 0;
    	int failCount = 0;
    	
        	successCount = monitoringService.extractSuccessCount(param); 
        	failCount = monitoringService.extractFailCount(param);
    	
    	if(jobExtractId != "") {
    		extractDetail = monitoringService.selectExtractDetail(jobExtractId);
    	}
    	
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("extractId", jobExtractId);
    	mav.addObject("extractStartTime", extractStartTime);
    	mav.addObject("extractEndTime", extractEndTime);
    	mav.addObject("date", date);
    	mav.addObject("successCount", successCount);
    	mav.addObject("failCount", failCount);
    	mav.addObject("extractDetail", list);
    	mav.addObject("searchKeyword", searchKeyword);
    	mav.setViewName("admin/monitor/extract/extractMonitoringList");
    	
    	return mav;
    }
    
     /**
	  * 상세 로그 	
	  * @param request
	  * @param vo
	  * @return
	  * @throws Exception
	  */
	  @RequestMapping(value="/monitoringCrwDetail")
	  @ResponseBody
	  public List<MonitoringVO> CrwlLogDetail(HttpServletRequest request, MonitoringVO vo) throws Exception { 
		  	String stepExecutionId = request.getParameter("stepExecutionId"); 
		  	String code = request.getParameter("code");
		  	
		  	HashMap<String, Object> param = new HashMap<>();
		  	
		  	param.put("code", code);
		  	param.put("stepExecutionId", stepExecutionId);
		  	
		  	List<MonitoringVO> detail = monitoringService.selectCrwlLogDetail(param);
		  	
		  	return detail;
	  }
	  
     /**
	  * 상세 로그 	
	  * @param request
	  * @param vo
	  * @return
	  * @throws Exception
	  */
	  @RequestMapping(value="/monitoringLdDetail")
	  @ResponseBody
	  public List<MonitoringVO> LoadLogDetail(HttpServletRequest request, MonitoringVO vo) throws Exception { 
		  	String stepExecutionId = request.getParameter("stepExecutionId"); 
		  	
		  	List<MonitoringVO> detail = monitoringService.selectLoadLogDetail(stepExecutionId);
		  	
		  	return detail;
	  }
	  
	  /**
	  * 상세 로그 	
	  * @param request
	  * @param vo
	  * @return
	  * @throws Exception
	  */
	  @RequestMapping(value="/selectCrwlLoadLogDetail")
	  @ResponseBody
	  public List<MonitoringVO> selectCrwlLoadLogDetail(HttpServletRequest request, MonitoringVO vo) throws Exception {
		  
		  String stepExecutionId = request.getParameter("stepExecutionId");
		  String code = request.getParameter("code");
		  
		  HashMap<String, Object> param = new HashMap<>();
		  
		  param.put("code", code);
		  param.put("stepExecutionId", stepExecutionId);
		  
		  List<MonitoringVO> detail = monitoringService.selectCrwlLoadLogDetail(param);
		  
		  return detail;
		  
	  }
	  
	  /**
	  * 배치 스텝 상세 로그 	
	  * @param request
	  * @param vo
	  * @return
	  * @throws Exception
	  */
	  @RequestMapping(value="/selectBatchStepLogDetail")
	  @ResponseBody
	  public List<MonitoringVO> selectBatchStepLogDetail(HttpServletRequest request, MonitoringVO vo) throws Exception {
		  
		  String stepExecutionId = request.getParameter("stepExecutionId");
//		  String code = request.getParameter("code");
		  
		  HashMap<String, Object> param = new HashMap<>();
		  
//		  param.put("code", code);
		  param.put("stepExecutionId", stepExecutionId);
		  
		  List<MonitoringVO> detail = monitoringService.selectStepLog(param);
		  
		  return detail;
		  
	  }
    
//    @RequestMapping(value="/monitoringLogDetail")
//    public ModelAndView monitoringLogDetail(MonitoringVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception{
//    	String stepExecutionId = request.getParameter("stepExecutionId");
//    	List<MonitoringVO> detail = monitoringService.selectLogDetail(stepExecutionId);
//    	
//    	ModelAndView mav = new ModelAndView();
//    	
//    	mav.addObject("detail", detail);
//    	mav.setViewName("admin/monitor/monitoringLog");
//		return mav;
//    }
    
    /**
     * 크롤링 단계별 재진행
     * @param vo
     */    
    @RequestMapping(value="/retryCrwlPerStep", method=RequestMethod.POST)
	@ResponseBody
	public void retryCrawlingPerStep(@ModelAttribute("monitoringVO")MonitoringVO vo, Model model) throws Exception {
    	
    	String stepCode = vo.getStepCode();
    	String stepExecutionId = vo.getStepExecutionId();
    	
    	SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");    	
    	String startTime = sDate.format(vo.getStartTime());
    	
    	logger.debug("아아아 retryCrawlingPerStep stepCode : " + stepCode);
    	logger.debug("아아아 retryCrawlingPerStep startTime : " + startTime);
    	
    	boolean isWindows = System.getProperty("os.name").toLowerCase().startsWith("windows");
    	
    	List<String> cmdList = new ArrayList<String>();
    	
    	if (isWindows) {    		
    		//윈도우 환경에서 실행 시 아래 경로를 각자 PC 경로에 맞게 변경 후 테스트 하세요~!!
    		//gradle 환경에서는 lib 파일이 모여있는 경로가 없습니다. 특정 폴더에 jar 파일 옮겨 놓고 테스트 하시면 됩니다.
    		cmdList.add("cmd");
    		cmdList.add("/c");
    		cmdList.add("S:\\sts-4.9.0.RELEASE\\plugins\\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_15.0.1.v20201027-0507\\jre\\bin\\java -Xms512m -Xmx1024m -XX:+UseParallelGC -cp S:\\git\\repository\\construct.open.db\\jhit.construct.open.db\\bin\\main;S:\\lib\\*; com.jhit.DataLoaderApplication " + stepCode + " " + startTime);
    	}else {
    		//cmdList.add("java -Xms512m -Xmx1024m -XX:+UseParallelGC -cp :/data/app/jhit.construct.open.db/BOOT-INF/lib/*:/data/app/jhit.construct.open.db/BOOT-INF/classes/ com.jhit.DataLoaderApplication " + stepCode + " " + startTime);
    		
    		cmdList.add("java");
    		cmdList.add("-Xms512m");
    		cmdList.add("-Xmx1024m");
    		cmdList.add("-XX:+UseParallelGC");
    		cmdList.add("-cp");
    		cmdList.add(":/data/app/jhit.construct.open.db/BOOT-INF/lib/*:/data/app/jhit.construct.open.db/BOOT-INF/classes/");
    		cmdList.add("com.jhit.DataLoaderApplication");
    		cmdList.add(stepCode);
    		cmdList.add(startTime);
    		
    	}
    	
    	ProcessBuilder builder = new ProcessBuilder();
		builder.command(cmdList);
		builder.redirectOutput(ProcessBuilder.Redirect.INHERIT);
		builder.redirectError(ProcessBuilder.Redirect.INHERIT);
		builder.redirectInput(ProcessBuilder.Redirect.INHERIT);
		
		Process process = builder.start();
		
		monitoringService.retryCrwl(stepExecutionId); //재실행시 재실행여부 Y로 수정
		monitoringService.retryLoad(stepExecutionId); //재실행시 재실행여부 Y로 수정
		//int exitCode = process.waitFor();			
		//logger.debug("exitCode : " + exitCode);
    	
    }
    
    /**
     * 데이터 추출 다운로드
     * @param vo
     * @throws Exception
     */
    @RequestMapping("/extractDownload")
    public void extractDownload(MonitoringVO vo, HttpServletRequest req, HttpServletResponse res) throws Exception {
    	//String extrcLogNo = vo.getExtrcLogNo();
    	monitoringService.extractDownload(vo, req, res); 
    	
    	
    }
    
}