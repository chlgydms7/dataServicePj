function selectDetail(idx) {
	var nowPage = $(".nowPage").html();
	
	$("input[name=nowPage]").val(nowPage);
	$("input[name=idx]").val(idx);
	
	$("form[name=BoardVO]").attr("action", "/detailView");
	$("form[name=BoardVO]").submit();
}

function getList() {
	$("form[name=BoardVO]").attr("action", "/boardList");
	$("form[name=BoardVO]").submit();
}

function updateView() {
	$("form[name=BoardVO]").attr("action", "/updateView");
	$("form[name=BoardVO]").submit();
}

function updateData(idx) {
	$("input[name=idx]").val(idx);
	
	$("form[name=BoardVO]").attr("action", "/updateData");
	$("form[name=BoardVO]").submit();
}

function insertData(){
	$("form[name=BoardVO]").attr("action", "/insertView");
	$("form[name=BoardVO]").submit();	
}

function save() {
	
	if($("input[name=title]").val()==""){
		alert("제목을 입력해주세요.");
		$("input[name=title]").focus();
		return;
	}else if($("input[name=content]").val()==""){
		alert("내용을 입력해주세요.");
		$("input[name=content]").focus();
		return;
	}
	
	$("form[name=BoardVO]").attr("action", "/insertData");
	$("form[name=BoardVO]").submit();
}

function deleteView() {
	
	if(confirm("삭제하시겠습니까?") == true) {
		
		$("form[name=BoardVO]").attr("action", "/deleteData");
		$("form[name=BoardVO]").submit();
		
	}else{
		return false;
	}
	
}

/**검색 */
function search() {
	var params = {
		_csrf : $("input[name=_csrf]").val()
		,searchKeyword : $("#searchKeyword").val()
		,searchCondition : $("#searchCondition").val()
	};
	
	$.ajax({
		data : params
		,url : "/boardList"
		,success : function(){
		}
	});
	
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
			$("form[name=BoardVO]").submit();
		}
	});
}

window.onload = function(){
 
    $("input[name=searchKeyword]").keydown(function (key) {
        if(key.keyCode == 13){//엔터
            search();
        }
    });
    
};