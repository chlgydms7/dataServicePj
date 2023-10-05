
function search() {
	var params = {
		_csrf : $("input[name=_csrf]").val()
		,searchKeyword : $("#searchKeyword").val()
		,searchCondition : $("#searchCondition").val()
	};
	
	$.ajax({
		data : params
		,method : "POST"
		,success : function(){
			$("form[name=searchForm]").submit();
		}
	});
}

function origin() {
	
	var params = {
		_csrf : $("input[name=_csrf]").val()
		,dataOrigin : $("#dataOrigin").val()
	}
	
	$.ajax({
		data : params
		,url : "/extractList"
		,async : false
		,success : function() {
			console.log("success");
		}
	});
	
}

/**시도 선택 및 시군구 변경 */
function sidoSelect(e){
	
	if(e.value == ""){
		
		$("#sigungu").empty();
		var sigunguOpt;
		sigunguOpt = "<option value=''>시군구</option>"
		$("#sigungu").append(sigunguOpt);
	
		$("#umd").empty();
		var umdOpt;
		umdOpt = "<option value=''>읍면동</option>"
		$("#umd").append(umdOpt);
		
		$("#li").empty();
		var liOpt;
		liOpt = "<option value=''>리</option>"
		$("#li").append(liOpt);
		
	}else{
		var sido = e.value.substring(0,2);
	
		/*$("#sidoCode").val("");
		$("#sidoCode").val(sido);*/
		
		params = {_csrf : $("input[name=_csrf]").val()
					  ,sidoCode : sido
					  }
			
		$("#sigungu").empty();
		
		$("#umd").empty();
		var umdOpt;
		umdOpt = "<option value=''>읍면동</option>"
		$("#umd").append(umdOpt);
		
		$("#li").empty();
		var liOpt;
		liOpt = "<option value=''>리</option>"
		$("#li").append(liOpt);
		
		var sigunguOpt;
		
		$.ajax({
			data : params
			,url   : "/selectSigungu"
			,success : function(data){
				
				sigunguOpt = "<option value=''>시군구</option>"
				for(var i=0; i<data.length; i++){
					sigunguOpt += "<option id='02' value='"+data[i].bjdongCode+"'>"+data[i].legaldongNm+"</option>"
				}
				
				$("#sigungu").append(sigunguOpt);
			}
		})
	}
	
}

/**시군구 선택 및 읍면동 변경 */
function sigunguSelect(e){
	var sigungu = e.value.substring(0,5);
	
	$("#sigunguCode").val("");
	$("#sigunguCode").val(sigungu);
	
	params = {_csrf : $("input[name=_csrf]").val()
				  ,sigunguCode : sigungu
				  }
		
	$("#umd").empty();
	
	$("#li").empty();
	var liOpt;
	liOpt = "<option value=''>리</option>"
	$("#li").append(liOpt);
	
	var umdOpt;
	
	$.ajax({
		data : params
		,url   : "/selectUmd"
		,success : function(data){
			
			umdOpt = "<option value=''>읍면동</option>"
			for(var i=0; i<data.length; i++){
				umdOpt += "<option id='03' value='"+data[i].bjdongCode+"'>"+data[i].legaldongNm+"</option>"
			}
			
			$("#umd").append(umdOpt);
		}
	})
}

/**읍면동 선택 및 리 변경 */
function umdSelect(e){
	var umd = e.value.substring(0,8);
	
	$("#umdCode").val("");
	$("#umdCode").val(umd);
	
	params = {_csrf : $("input[name=_csrf]").val()
				  ,umdCode : umd
				  }
		
	$("#li").empty();
	
	var liOpt;
	
	$.ajax({
		data : params
		,url   : "/selectLi"
		,success : function(data){
			
			liOpt = "<option value=''>리</option>"
			for(var i=0; i<data.length; i++){
				liOpt += "<option id='03' value='"+data[i].bjdongCode+"'>"+data[i].legaldongNm+"</option>"
			}
			
			$("#li").append(liOpt);
		}
	})
}

function addCart(tableKorNm,tableEngNm,dataGb,lastUpdtDt){
	
	var sido = $("#sido option:selected").text();
	var sigungu = $("#sigungu option:selected").text();
	var umd = $("#umd option:selected").text();
	//var li = $("#li option:selected").text();
	
	var sidoCode = $("#sido option:selected").val().substring(0,2); //2자리
	var sigunguCode = $("#sigungu option:selected").val().substring(0,5); //5자리
	var umdCode = $("#umd option:selected").val().substring(0,8); //8자리
	//var liCode = $("#li option:selected").val().substring(0,10); //10자리
	
	if(tableEngNm != "z_luris_lsct_comcode"){ //공통코드(지역코드 없음)
		if(sidoCode == "" && lastUpdtDt != ""){
			alert("지역을 선택해주세요.");
			return;
		}
	}else {
		alert("해당 데이터는 추출할 수 없습니다.");
		return;
	}
	
	if(lastUpdtDt == ""){
		alert("다운로드가 불가능합니다.");
		return;
	}
	
	if(tableEngNm == "lcld181l" || tableEngNm == "lcld131a"){
		if(umdCode != ""){
			alert("해당 데이터는 시군구 단위까지만 추출가능합니다.");
			return;
		}
	}
	
	/*var sidoSeCode = $("#sido option:selected").val().substring(0,2); //2자리
	var sigunguSeCode = $("#sigungu option:selected").val().substring(2,5); //5자리
	var umdSeCode = $("#umd option:selected").val().substring(5,8); //8자리
	var liSeCode = $("#li option:selected").val().substring(8,10); //10자리*/
	
	var table;
	
	table = "<table>"
	table += "<colgroup>"
	table += "<col width='10%'>"
	table += "<col width='90%'>"
	table += "</colgroup>"
	
	table += "<tr style='font-size: 15px;text-indent: 1em;text-align: left;'>"
	
	if(tableEngNm == "z_luris_lsct_comcode"){
		table += "<td><input type='checkbox' name='checkRow' style='height: 30px;' id='check' value='noLocation' /></td>"
		table += "<td><b>"+tableKorNm+"</b>"
	    table += "<input type='hidden' name='tableEngNmB' id='tableEngNmB' value='"+tableEngNm+"'>"
	    table += "<input type='hidden' name='dataGbB' id='dataGbB' value='"+dataGb+"'>"
		table += "(전체)"
		table += "</td>"
		
	}else{
		if(sido != "시도"){
			if(sigungu == "시군구" && umd == "읍면동"){
				table += "<td><input type='checkbox' name='checkRow' style='height: 30px;' id='check' value='"+sidoCode+"' /></td>"
			}
			if(sigungu != "시군구"){
				if(umd == "읍면동"){
					table += "<td><input type='checkbox' name='checkRow' style='height: 30px;' id='check' value='"+sigunguCode+"' /></td>"
				}
				if(umd != "읍면동"){
					table += "<td><input type='checkbox' name='checkRow' style='height: 30px;' id='check' value='"+umdCode+"' /></td>"
				}
			}
		}
		//전국
		/*if(sido == "시도" && sigungu == "시군구" && umd == "읍면동"){
			table += "<td><input type='checkbox' name='checkRow' style='height: 30px;' id='check' value='' /></td>"
		}*/
		
	    /*table += "<td><input type='checkbox' name='checkRow' style='height: 30px;' id='check' value='' /></td>"*/
	    table += "<td><b>"+tableKorNm+"</b>"
	    table += "<input type='hidden' name='tableEngNmB' id='tableEngNmB' value='"+tableEngNm+"'>"
	    table += "<input type='hidden' name='dataGbB' id='dataGbB' value='"+dataGb+"'>"
	
		if(sido != "시도"){
			if(sigungu == "시군구" && umd == "읍면동"){
				table += "("+sido+")"
				/*table += "<input type='hidden' name='sidoSeCode' id='sidoSeCode' value='"+sidoSeCode+"'>"*/
				table += "</td>"
			}
			if(sigungu != "시군구"){
				if(umd == "읍면동"){
					table += "("+sigungu+")"
					/*table += "<input type='hidden' name='sidoSeCode' id='sidoSeCode' value='"+sidoSeCode+"'>"
					table += "<input type='hidden' name='sigunguSeCode' id='sigunguSeCode' value='"+sigunguSeCode+"'>"*/
					table += "</td>"
				}
				if(umd != "읍면동"){
					table += "("+umd+")"
					/*table += "<input type='hidden' name='sidoSeCode' id='sidoSeCode' value='"+sidoSeCode+"'>"
					table += "<input type='hidden' name='sigunguSeCode' id='sigunguSeCode' value='"+sigunguSeCode+"'>"
					table += "<input type='hidden' name='umdSeCode' id='umdSeCode' value='"+umdSeCode+"'>"*/
					table += "</td>"
				}
			}
		}
		//전국
		/*if(sido == "시도" && sigungu == "시군구" && umd == "읍면동" && li == "리"){
			table += "(전국)</td>"
		}*/
	}
	
    table += "</tr>"
	table += "</table>"
	
	$("#sidebarContent").append(table);
	
}

function removeList(){
	
	var cnt = $("input[name=checkRow]:checkbox:checked").length;
	
	if(cnt == 0){
		alert("한개 이상 선택해주세요.");
		return;
	}
	
	$("input[name=checkRow]:checked").each(function(){

		var checked = $("input[name=checkRow]").is(":checked");
		
		if(checked == true){
			$(this).parents('tr').remove();
		}
	});
	
}

function extractList(){
/*	var sidoCode = $("#sido option:selected").val().substring(0,2);
	var sigunguCode = $("#sigungu option:selected").val().substring(0,5);
	var umdCode = $("#umd option:selected").val().substring(0,8);
	var liCode = $("#li option:selected").val().substring(0,10);*/
	
	var sidoCode = $("#sido option:selected").val().substring(0,2); //2자리
	var sigunguCode = $("#sigungu option:selected").val().substring(2,5); //3자리
	var umdCode = $("#umd option:selected").val().substring(5,8); //3자리
	//var liCode = $("#li option:selected").val().substring(8,10); //2자리
	
	var scopeArray = [];
	var tableArray = [];
	var dataGbArray = [];
	var locateArray = [];
	
	var cnt = $("input[name=checkRow]:checkbox:checked").length;
	
	if(cnt == 0){
		alert("한개 이상 선택해주세요.");
		return;
	}
	
	if(confirm("추출하시겠습니까?") ==true ){
		
		$("input[name=checkRow]:checked").each(function(){

		var checked = $("input[name=checkRow]").is(":checked");
		var code = $(this).val();
		
		//추출범위코드(01 : 전국, 02 : 시도, 03: 시군구, 04 : 읍면동)
		//데이터구분코드(01 : 속성, 02 : 공간)
		if(checked == true){
			
			if(code.length == 0){ //전국
				/*scopeArray += [,"01"];
				tableArray += [,$(this).parents('tr').find("#tableEngNmB").val()];
				dataGbArray += [,$(this).parents('tr').find("#dataGbB").val()];
				locateArray += [,code];
				$("input[name=extrcScope]").val(scopeArray);
				$("input[name=tableEngNm]").val(tableArray);
				$("input[name=dataGb]").val(dataGbArray);
				$("input[name=extrcLo]").val(locateArray);*/
				alert("지역을 선택해주세요.");
				return;
				
			}else if(code.length == 2){ //시도
				scopeArray += [,"02"];
				tableArray += [,$(this).parents('tr').find("#tableEngNmB").val()];
				dataGbArray += [,$(this).parents('tr').find("#dataGbB").val()];
				locateArray += [,code];
				$("input[name=extrcScope]").val(scopeArray);
				$("input[name=tableEngNm]").val(tableArray);
				$("input[name=dataGb]").val(dataGbArray);
				$("input[name=extrcLo]").val(locateArray);
				
			}else if(code.length == 5){ //시군구
				scopeArray += [,"03"];
				tableArray += [,$(this).parents('tr').find("#tableEngNmB").val()];
				dataGbArray += [,$(this).parents('tr').find("#dataGbB").val()];
				locateArray += [,code];
				$("input[name=extrcScope]").val(scopeArray);
				$("input[name=tableEngNm]").val(tableArray);
				$("input[name=dataGb]").val(dataGbArray);
				$("input[name=extrcLo]").val(locateArray);
				
			}else if(code.length == 8){ //읍면동
				scopeArray += [,"04"];
				tableArray += [,$(this).parents('tr').find("#tableEngNmB").val()];
				dataGbArray += [,$(this).parents('tr').find("#dataGbB").val()];
				locateArray += [,code];
				$("input[name=extrcScope]").val(scopeArray);
				$("input[name=tableEngNm]").val(tableArray);
				$("input[name=dataGb]").val(dataGbArray);
				$("input[name=extrcLo]").val(locateArray);
				
			}
		}
	});
	
		/*var params = {_csrf : $("input[name=_csrf]").val()
							, tableEngNm : $("input[name=tableEngNm]").val()
							, extrcScope : $("input[name=extrcScope]").val()
							, extrcLo : $("input[name=extrcLo]").val()
							, dataGb : $("input[name=dataGb]").val()
							};
		
		$.ajax({
			data : params
			,url : "/executingExtract"
			,success : function(){
				alert("추출 요청을 완료했습니다.");
			}
		})*/
		alert("추출 요청을 완료했습니다.");
		
		$("form[name=sidebarForm]").attr("action", "/executingExtract");
		$("form[name=sidebarForm]").submit();
		
	}else{
		return false;
	}
	
	/*$("input:checkbox").prop("checked",false); // 모든 체크박스 해제*/

}

function errorList(tableEngNm,tableKorNm){
	
	var table;
	var header;
	var params = {_csrf : $("input[name=_csrf]").val()
						,tableEngNm : tableEngNm
					    }
	
	$("#modalTable").empty();
	
	$.ajax({
		data : params
		,url : "/dataErrorList"
		,success : function(data){
			
			table = "";
			
			table += "<table class='table'>"
	 		table += "<thead class='table-active'>"
			table += "<tr id='errorList'>"
			table += "<th scope='col'><p class='text-center h6'>시작일시</p></th>"
			table += "<th scope='col'><p class='text-center h6'>종료일시</p></th>"
			table += "<th scope='col'><p class='text-center h6'>오류 내용</p></th>"
			table += "</tr>"
			table += "</thead>"
			table += "<tbody>"
			
			for(var i=0; i<data.length; i++){
				var date = data[i].crwlBegin.substring(0,10);
				table += "<tr class=\"table-tr\" onclick=\"getMonitoringList(\'"+date+"\');\">"
				table += "<td>"+data[i].crwlBegin+"</td>"
				table += "<td>"+data[i].crwlEnd+"</td>"
				table += "<td>"+data[i].crwlErrorCn+"</td>"
				table += "</tr>"
			}
			
			table += "</tbody>"
	 		table += "</table>"
			
			header = "<p class='modal_header_ct'>"+tableKorNm+"</p>"
			
			$("#modalTable").append(table);
			$(".modal_header").append(header);
			$(".modal").fadeIn();
			
		}
	})
}

function closeModal(){
	$(".modal").fadeOut();
}

function getMonitoringList(date){
	
	$("input[name=date]").val(date);
	
	var params = {_csrf : $("input[name=_csrf]").val()
						,date : date
						}
	
	$.ajax({
		data : params
		,url : "/loaderMonitoring"
		,success : function(){
			$("form[name=modalForm]").attr("action", "/loaderMonitoring");
			$("form[name=modalForm]").submit();
		}
	})
}

function save(){
var result = "";
$(".box:checked").each(function() {
$("#"+$(this).val()).remove();
// result += ','+$(this).val(); //후에 값을 배열로 사용 할시에는 콤바로 나눈다. 첫콤마는 짜르고 만든다
result += ','+$(this).val();
//AJAX로 넘겨줄때는
//.get('XXX.php',{SelType:$(this).val()});
});
$("#aa").empty();//초기화
$("#aa").append(result);//데이터 입력
}


window.onload = function(){

	$("input[name=searchKeyword]").keydown(function (key) {
        if(key.keyCode == 13){//enter
            search();
        }
    });

}
