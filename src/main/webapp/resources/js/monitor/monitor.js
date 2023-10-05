/**
 * 크롤링 스텝 재실행
 */
function retryCrawling(stepCode, startTime, btnId, stepId) {
	
	if(confirm("해당 크롤링이 재실행됩니다.") == true) {
		
		$("#stepCode").val(stepCode);
		$("#startTime").val(startTime);
		//$("form[name=MonitoringVO]").attr("action", "/retryCrwlPerStep");
		//$("form[name=MonitoringVO]").submit();
		
		var monitoringVO = {
			_csrf : $("input[name=_csrf]").val(),
			stepCode : stepCode,
			startTime : startTime,
			stepExecutionId : stepId
		}
		
		//console.log("monitoringVO : " + JSON.stringify(monitoringVO));
		
		$.ajax({
			//data : $("form[name=MonitoringVO]")
			data : monitoringVO
			,url : '/retryCrwlPerStep' 
			,dataType : 'text' 
			,type : 'POST' 
			,success : function(item) {				
				alert("재구축 요청 완료");
				$("#"+btnId).hide();
			}, 
			beforeSend : function(){
				
			},
			complete : function(){
				//hideLoding();
			},
			error : function(e) {
				console.log("error : " + e.status);
				alert("재구축 요청 오류");
			}
		});
		
	}else{
		return false;
	}
}

/**
 * 크롤링 스텝 재실행
 */
function extractDownload(extrcLogNo) {
	if(confirm("해당 파일을 다운로드 하시겠습니까?") == true) {
		$("#extrcLogNo").val(extrcLogNo);
		$("form[name=MonitoringVO]").attr("action", "/extractDownload");
		$("form[name=MonitoringVO]").submit();
	}else{
		return false;
	}
}

/**페이징 */
function paging(nowPage){
	var params = {
		_csrf : $("input[name=_csrf]").val()
		,nowPage : nowPage
		,cntPerPage : $("#cntPerPage").val()
	};
	
	$("#nowPage").val(nowPage);
	
	$.ajax({
		data : params
		,success : function(){
			$("form[name=MonitoringVO]").submit();
		}
	});
}

/*function detailLoader(id){
	
	$("input[name=jobInstanceId]").val(id);
	var idx = [1,2,3,4,5,6];
	if(id == ""){
		if($("#loaderList").css("display") == "none"){
			$("#loaderList").show();
		} else {
			$("#loaderList").hide();
		}
		
		for(var i=0;i<idx.length;i++){
			if($("#loaderList"+i).css("display") == "none"){
				$("#loaderList"+i).show();
			} else {
				$("#loaderList"+i).hide();
			}
		}
		
		if($("#noLoaderList").css("display") == "none"){
			$("#noLoaderList").show();
		} else {
			$("#noLoaderList").hide();
		}
		
		return false;
	}
	
	if($("#loaderList").css("display") == "none"){
		$("#loaderList").show();
	} else {
		$("#loaderList").hide();
	}
	for(var i=0;i<idx.length;i++){
		if($("#loaderList"+i).css("display") == "none"){
			$("#loaderList"+i).show();
		} else {
			$("#loaderList"+i).hide();
		}
	}
	
}
	
function detailExtract(id){
	
	$("input[name=jobInstanceId]").val(id);
	var idx = [1,2,3,4,5,6];
	if(id == ""){
		if($("#extractList").css("display") == "none"){
			$("#extractList").show();
		} else {
			$("#extractList").hide();
		}
		
		for(var i=0;i<idx.length;i++){
			if($("#extractList"+i).css("display") == "none"){
				$("#extractList"+i).show();
			} else {
				$("#extractList"+i).hide();
			}
		}
		
		if($("#noExtractList").css("display") == "none"){
			$("#noExtractList").show();
		} else {
			$("#noExtractList").hide();
		}
		return false;
	}
	
	if($("#extractList").css("display") == "none"){
		$("#extractList").show();
	} else {
		$("#extractList").hide();
	}
	for(var i=0;i<idx.length;i++){
		if($("#extractList"+i).css("display") == "none"){
			$("#extractList"+i).show();
		} else {
			$("#extractList"+i).hide();
		}
	}
}*/
	
function detailOpen(stepExecutionId, idx){
	
	$("input[name=stepExecutionId]").val("");
	$("input[name=stepExecutionId]").val(stepExecutionId);
	
	$("#monitoringList"+idx).empty();
	var detailTr = '';
	
	var params = {_csrf : $("input[name=_csrf]").val()
						,stepExecutionId : stepExecutionId
					    };
	
	$.ajax({
		data : params
		,url : "/monitoringLogDetail"
		,success : function(data){
			
			if($("#monitoringList"+idx).css("display") == "none"){
				$("#monitoringList"+idx).show();
			} else {
				$("#monitoringList"+idx).hide();
			}
			
			detailTr = '<td>ID</td>'
			detailTr += '<td>파일 출처</td>'
			detailTr += '<td>파일 수</td>'
			detailTr += '<td colspan="4">오류 내용</td>'
			detailTr += '</tr>'
			
			for(var i=0; i<data.length;i++){
				detailTr += '<tr>'
				detailTr += '<td>'+data[i].fileId+'</td>'
				detailTr += '<td>'+data[i].fileOrigin+'</td>'
				detailTr += '<td>'+data[i].fileCo+'</td>'
				detailTr += '<td colspan="4">'+data[i].errorCn+'</td>'
				detailTr += '</tr>'
			}
			
			$("#monitoringList"+idx).append(detailTr);
		}
	})
}

/**적재 목록 */
function getLoaderList(){
	$("form[name=MonitoringVO]").attr("action", "/loaderMonitoring");
	$("form[name=MonitoringVO]").submit();	
}

/**추출 목록 */
function getExtractList(){
	$("form[name=MonitoringVO]").attr("action", "/extractMonitoring");
	$("form[name=MonitoringVO]").submit();	
}

/**크롤링 적재 상세 로그 모달창 */
function detailLog(stepId, stepNm, code){
	
	$("#stepExecutionId").val("");
	$("#stepExecutionId").val(stepId);
	$("input[name=code]").val(code);
	
	var table;
	var header;
	var param = {stepExecutionId : stepId
					  ,_csrf : $("input[name=_csrf]").val()
					  ,code : code
			          };
			
	$("#modalTable").empty();
	$(".modal_header").empty();
	
	$.ajax({
		data : param
		,url : "/selectCrwlLoadLogDetail"
		,success : function(data){			
			
			//console.log(data);
			
			table = ""
			
			if(data.length == 0){
				table += "<div class='list-group mb-3' style='text-align: initial;'>"
				table += "<a href='#' class='list-group-item list-group-item-action'>"
			 	table += "상세 내역이 없습니다."
			 	table += "</a>"
				table += "</div>"
			}else {
				for(var i=0; i<data.length; i++){
				 	
					if(data[i].dataNm != null && data[i].lodNm != null){
						table += "<div>"
						table += "<p class='text-left h6'>"
						table += "- " + nullConvertDash(data[i].dataNm)
						table += "</p>"
						table += "</div>"
						table += "<div class='list-group mb-3' style='text-align: initial;'>"
					 	table += "<a href='#' class='list-group-item list-group-item-action'>"
					 	table += "크롤링 파일 건수"
					 	table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+commaNum(nullConvertZero(data[i].fileCo))+"</span>"
					 	table += "</a>"						
						if(data[i].errorCn != null){
							table += "<a href='#' class='list-group-item list-group-item-action'>"
						 	table += "크롤링 오류"
							table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+data[i].errorCn+"</span>"
							table += "</a>"
						}
						table += "<a href='#' class='list-group-item list-group-item-action'>"
					 	table += "DB 적재 건수"
					 	table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+commaNum(nullConvertZero(data[i].lodCnt))+"</span>"
					 	table += "</a>"
						if(data[i].lodErrorCn != null){
							table += "<a href='#' class='list-group-item list-group-item-action'>"
						 	table += "적재 오류"
							table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+data[i].lodErrorCn+"</span>"
							table += "</a>"
						}
						table += "</div>"
					}else if(data[i].dataNm != null && data[i].lodNm == null) {
						table += "<div>"
						table += "<p class='text-left h6'>"
						table += "- " + nullConvertDash(data[i].dataNm)
						table += "</p>"
						table += "</div>"
						table += "<div class='list-group mb-3' style='text-align: initial;'>"						
					 	table += "<a href='#' class='list-group-item list-group-item-action'>"
					 	table += "크롤링 파일 건수"
					 	table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+commaNum(nullConvertZero(data[i].fileCo))+"</span>"
					 	table += "</a>"
						if(data[i].errorCn != null){
							table += "<a href='#' class='list-group-item list-group-item-action'>"
						 	table += "크롤링 오류"
							table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+data[i].errorCn+"</span>"
							table += "</a>"
						}
						table += "</div>"
					}else if(data[i].dataNm == null && data[i].lodNm != null) {
						table += "<div>"
						table += "<p class='text-left h6'>"
						table += "- " + nullConvertDash(data[i].lodNm)
						table += "</p>"
						table += "</div>"
						table += "<div class='list-group mb-3' style='text-align: initial;'>"
						table += "<a href='#' class='list-group-item list-group-item-action'>"
					 	table += "DB 적재 건수"
					 	table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+commaNum(nullConvertZero(data[i].lodCnt))+"</span>"
					 	table += "</a>"
						if(data[i].lodErrorCn != null){
							table += "<a href='#' class='list-group-item list-group-item-action'>"
						 	table += "적재 오류"
							table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;'>"+data[i].lodErrorCn+"</span>"
							table += "</a>"
						}
						table += "</div>"
					}else {
						table += "<div>"
						table += "<p class='text-left h6'>"
						table += "데이터명 매핑 불가"
						table += "</p>"
						table += "</div>"
						table += "<div class='list-group mb-3' style='text-align: initial;'>"
						table += "<a href='#' class='list-group-item list-group-item-action'>"
						table += "로그 데이터에 오류가 있습니다."
						table += "</a>"
						table += "</div>"
					}		
				}
			}
			
			//스텝명
			header = "<p class='modal_header_ct'>"+stepNm+"</p>"
			
			$("#modalTable").append(table);
			$(".modal_header").append(header);
			$(".modal").fadeIn();
			
			detailStepLog(stepId);
		}
	})
	
	/*$.ajax({
		data : param
		,url : "/monitoringCrwDetail"
		,success : function(data){
			
			
			table = "<table>"
	 		table += "<colgroup>"
			table += "<col width='35%'>"
			table += "<col width='65%'>"
			table += "</colgroup>"
			
			//크롤링
	 		table += "<tr style='text-align: left;font-size: 20px;height: 40px;'>"
	 		table += "<td colspan='2'><b>- 크롤링</b></td>"
	 		table += "</tr>"
			
			for(var i=0; i<data.length; i++){
				
			 	table += "<tr style='text-indent: 1em; text-align: left;'>"
			 	table += "<td colspan='2'>- "+data[i].dataNm+"</td>" 
			 	table += "</tr>"
			 	table += "<tr style='text-indent: 2em; text-align: left;'>"
			 	table += "<td>파일 출처 : </td>"
			 	table += "<td>"+data[i].fileOrigin+"</td>"
			 	table += "</tr>"
			 	table += "<tr style='text-indent: 2em; text-align: left;'>"
			 	table += "<td>크롤링 파일 건수 : </td>"
			 	table += "<td>"+data[i].fileCo+"</td>"
			 	table += "</tr>"
			
				if(data[i].fileCo != 0){
				 	table += "<tr style='text-indent: 2em; text-align: left;'>"
				 	table += "<td>오류 내용 : </td>"
				
					if(data[i].errorCn == null){
					 	table += "<td>해당 파일은 오류가 없습니다.</td>"
					}else{
						table += "<td>"+data[i].errorCn+"</td>"
					}
				}
				
			 	table += "</tr>"
			}
			
			table += "</table>"
			
			//스텝명
			header = "<p class='modal_header_ct'>"+stepNm+"</p>"
			
			$("#modalTable").append(table);
			$(".modal_header").append(header);
			$(".modal").fadeIn();
			
			detailLoadLog();
		}
	})*/
}

function detailStepLog(stepId){
	
	$("#stepExecutionId").val("");
	$("#stepExecutionId").val(stepId);
	/*$("input[name=code]").val(code);*/
	
	var table;
	var param = {stepExecutionId : stepId
					  ,_csrf : $("input[name=_csrf]").val()
					  /*,code : code*/
			          };
			
	$.ajax({
		data : param
		,url : "/selectBatchStepLogDetail"
		,success : function(data){			
			
			table = ""
			
			for(var i=0; i<data.length; i++){
				if(data[i].exitMsg != ""){
					table += "<div class='list-group mb-3' style='text-align: initial;'>"
		 			table += "<a href='#' class='list-group-item list-group-item-action'>"
					table += "배치 오류"
					table += "<span class='badge badge-pill badge-primary pull-right' style='white-space:initial;width: 383px;word-break: break-word;'>"+data[i].exitMsg+"</span>"
					table += "</a>"
					table += "</div>"
				}else {
					table += "<div class='list-group mb-3' style='text-align: initial;'>"
					table += "<a href='#' class='list-group-item list-group-item-action'>"
				 	table += "배치 오류 내역이 없습니다."
				 	table += "</a>"
					table += "</div>"
				}
			}
			$("#modalTable").append(table);
		}
	})
}

function detailLoadLog(){
	
	var stepId = $("input[name=stepExecutionId]").val();
	
	var params = {
						stepExecutionId : stepId
					  	,_csrf : $("input[name=_csrf]").val()
						};
						
	$.ajax({
		data : params
		,url : "/monitoringLdDetail"
		,success : function(data){
			
			//데이터 적재
			table = "<table>"
			table += "<colgroup>"
			table += "<col width='35%'>"
			table += "<col width='65%'>"
			table += "</colgroup>"
			
			table += "<tr style='text-align: left;font-size: 20px;height: 40px;'>"
			table += "<td colspan='2'><b>- 적재</b></td>"
			table += "</tr>"
		
			for(var i=0; i<data.length; i++){
				 	table += "<tr style='text-indent: 1em; text-align: left;'>"
				 	table += "<td colspan='2'>- "+data[i].lodNm+"</td>" 
				 	table += "</tr>"
				 	/*table += "<tr style='text-indent: 2em; text-align: left;'>"
				 	table += "<td>파일 출처 : </td>"
				 	table += "<td>"+data[i].lodTableNm+"</td>"
				 	table += "</tr>"*/
				 	table += "<tr style='text-indent: 2em; text-align: left;'>"
				 	table += "<td>적재 건수 : </td>"
				 	table += "<td>"+data[i].lodCnt+"</td>"
				 	table += "</tr>"
				
					if(data[i].lodCnt != 0){
					
						if(data[i].lodErrorCn == null){
						 	//table += "<td>해당 파일은 오류가 없습니다.</td>"
						}else{
							table += "<tr style='text-indent: 2em; text-align: left;'>"
					 		table += "<td>오류 내용 : </td>"
							table += "<td>"+data[i].lodErrorCn+"</td>"
							table += "</tr>"
						}
					}
					
				 	
			}
		
			table += "</table>"
			
			$("#modalTable").append(table);
			
		}
	})
}

function closeModal(){
	$(".modal").fadeOut();
}

/*function errorCnView(){
	$.ajax({
		data : params
		,url : ""
		,success : function(data){
			
		}
	})
}
*/
function popClose(){
    window.open('', '_self').close();
}

window.onload = function(){
	$("#date").datepicker({
	    dateFormat: 'yy-mm-dd',
		showOn: "button",
	    buttonImage: "resources/datepicker/css/images/calendar_25_25.png",
	    buttonImageOnly: true,
	    buttonText: "날짜 선택",
		changeMonth: true, 
		changeYear: true, 
		nextText: '다음 달', 
		prevText: '이전 달',
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'], 
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], 
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
 	 });

	$("input[name=searchKeyword]").keydown(function (key) {
        if(key.keyCode == 13){//enter
			$("input[name=searchDate]").val($("#date").val());
            search();
        }
    });
}
