/**
 * 오픈마켓 상세조회
 */
function openDetail(dataId) {
	var nowPage = $(".nowPage").html();
	
	$("input[name=nowPage]").val(nowPage);
	$("input[name=dataId]").val(dataId);
	
	$("form[name=ManageVO]").attr("action", "/openDetailView");
	$("form[name=ManageVO]").submit();
}

/**
 * 국가중점데이터 상세조회
 */
function nationDetail(metdataId) {
	var nowPage = $(".nowPage").html();
	
	$("input[name=nowPage]").val(nowPage);
	$("input[name=metdataId]").val(metdataId);
	
	$("form[name=ManageVO]").attr("action", "/nationDetailView");
	$("form[name=ManageVO]").submit();
}

/**
 * 건축데이터개방 상세조회
 */
function constDetail(dataNm) {
	var nowPage = $(".nowPage").html();
	
	$("input[name=nowPage]").val(nowPage);
	$("input[name=dataNm]").val(dataNm);
	
	$("form[name=ManageVO]").attr("action", "/constDetailView");
	$("form[name=ManageVO]").submit();
}

/**
 * 오픈마켓 목록
 */
function getOpenList() {
	$("form[name=ManageVO]").attr("action", "/openList");
	$("form[name=ManageVO]").submit();
}

/**
 * 국가중점데이터 목록
 */
function getNationList() {
	$("form[name=ManageVO]").attr("action", "/nationList");
	$("form[name=ManageVO]").submit();
}

/**
 * 건축데이터개방 목록
 */
function getConstList() {
	$("form[name=ManageVO]").attr("action", "/constList");
	$("form[name=ManageVO]").submit();
}

/**
 * 오픈마켓 수정화면
 */
function updateOpenView() {
	$("form[name=ManageVO]").attr("action", "/updateOpenView");
	$("form[name=ManageVO]").submit();
}

/**
 * 국가중점메타데이터 수정화면
 */
function updateNationView() {
	$("form[name=ManageVO]").attr("action", "/updateNationView");
	$("form[name=ManageVO]").submit();
}

/**
 * 건축데이터개방 수정화면
 */
function updateConstView() {
	$("form[name=ManageVO]").attr("action", "/updateConstView");
	$("form[name=ManageVO]").submit();
}

/**
 * 오픈마켓 수정
 */
function updateOpenData(dataId) {
	$("input[name=dataId]").val(dataId);
	
	$("form[name=ManageVO]").attr("action", "/updateOpenData");
	$("form[name=ManageVO]").submit();
}

/**
 * 국가중점메타데이터 수정
 */
function updateNationData(dataId) {
	$("input[name=metdataId]").val(dataId);
	
	$("form[name=ManageVO]").attr("action", "/updateNationData");
	$("form[name=ManageVO]").submit();
}

/**
 * 건축데이터개방 수정
 */
function updateConstData(dataId) {
	$("input[name=dataNm]").val(dataId);
	
	$("form[name=ManageVO]").attr("action", "/updateConstData");
	$("form[name=ManageVO]").submit();
}

/**
 * 오픈마켓 등록화면조회
 */
function insertOpenData(){
	$("form[name=ManageVO]").attr("action", "/openInsertView");
	$("form[name=ManageVO]").submit();	
}

/**
 * 국가중점데이터 등록화면조회
 */
function insertNationData(){
	$("form[name=ManageVO]").attr("action", "/nationBInsertView");
	$("form[name=ManageVO]").submit();	
}

/**
 * 건축데이터개방 등록화면조회
 */
function insertConstData(){
	$("form[name=ManageVO]").attr("action", "/constInsertView");
	$("form[name=ManageVO]").submit();	
}

function saveOpen() {
	
	if($("input[name=dataId]").val()==""){
		alert("데이터ID를 입력해주세요.");
		$("input[name=dataId]").focus();
		return;
	}else if($("input[name=dataNm]").val()==""){
		alert("데이터명을 입력해주세요.");
		$("input[name=dataNm]").focus();
		return;
	}else if($("input[name=seOrganId]").val()==""){
		alert("구분(조직)을 선택해주세요.");
		$("#selectSeOrganNm").focus();
		return;
	}else if($("input[name=dataDcCn]").val()==""){
		alert("데이터 설명을 입력해주세요.");
		$("input[name=dataDcCn]").focus();
		return;
	}
	
	$("form[name=ManageVO]").attr("action", "/openDataInsert");
	$("form[name=ManageVO]").submit();
}

function saveNation() {
	
	if($("input[name=metdataId]").val()==""){
		alert("메타데이터ID를 입력해주세요.");
		$("input[name=metdataId]").focus();
		return;
	}else if($("input[name=dataNm]").val()==""){
		alert("메타데이터 명을 입력해주세요.");
		$("input[name=dataNm]").focus();
		return;
	}else if($("input[name=dataId]").val()==""){
		alert("데이터 명을 선택해주세요.");
		$("#selectDataANm").focus();
		return;
	}else if($("input[name=dataDcCn]").val()==""){
		alert("데이터 설명을 입력해주세요.");
		$("input[name=dataDcCn]").focus();
		return;
	}
	
	
	$("form[name=ManageVO]").attr("action", "/nationBDataInsert");
	$("form[name=ManageVO]").submit();
}

function saveConst() {
	
	if($("input[name=dataNm]").val()==""){
		alert("데이터명을 입력해주세요.");
		$("input[name=dataNm]").focus();
		return;
	}
	
	$("form[name=ManageVO]").attr("action", "/constDataInsert");
	$("form[name=ManageVO]").submit();
}

function deleteOpenView() {
	
	if(confirm("삭제하시겠습니까?") == true) {
		
		$("form[name=ManageVO]").attr("action", "/deleteOpenData");
		$("form[name=ManageVO]").submit();
		
	}else{
		return false;
	}
	
}

function deleteNationView() {
	
	if(confirm("삭제하시겠습니까?") == true) {
		
		$("form[name=ManageVO]").attr("action", "/deleteNationData");
		$("form[name=ManageVO]").submit();
		
	}else{
		return false;
	}
	
}

function deleteConstView() {
	
	if(confirm("삭제하시겠습니까?") == true) {
		
		$("form[name=ManageVO]").attr("action", "/deleteConstData");
		$("form[name=ManageVO]").submit();
		
	}else{
		return false;
	}
	
}

function selectDisabled() {
	
	//좌표계
	if($("#cntmNoAns").is(":checked") == true){
		$("select[name=dataCntmCode]").prop("disabled",true);
		$("select[name=spainfCntmCode]").prop("disabled",true);
	}else{
		$("select[name=dataCntmCode]").prop("disabled",false);
		$("select[name=spainfCntmCode]").prop("disabled",false);
	}
	//공개 배포 좌표계
	if($("#othbcCntmNoAns").is(":checked") == true){
		$("select[name=othbcDistbDataCntmCode]").prop("disabled",true);
	}else{
		$("select[name=othbcDistbDataCntmCode]").prop("disabled",false);
	}
	//갱신주기
	if($("#rnwNoAns").is(":checked") == true){
		$("select[name=rnewCycleCode]").prop("disabled",true);
	}else{
		$("select[name=rnewCycleCode]").prop("disabled",false);
	}
	//최종갱신시기
	if($("#lastNoAns").is(":checked") == true){
		$("select[name=lastRnewEraCode]").prop("disabled",true);
	}else{
		$("select[name=lastRnewEraCode]").prop("disabled",false);
	}
	//구축범위
	if($("#scopeNoAns").is(":checked") == true){
		$("select[name=constScopeCode]").prop("disabled",true);
	}else{
		$("select[name=constScopeCode]").prop("disabled",false);
	}
	//기본공간정보 대분류
	if($("#lcNoAns").is(":checked") == true){
		$("select[name=bassSpainfLclasCode]").prop("disabled",true);
	}else{
		$("select[name=bassSpainfLclasCode]").prop("disabled",false);
	};
	//기본공간정보 중분류
	if($("#mlNoAns").is(":checked") == true){
		$("select[name=bassSpainfMlsfcCode]").prop("disabled",true);
	}else{
		$("select[name=bassSpainfMlsfcCode]").prop("disabled",false);
	}
	//기본공간정보 소분류
	if($("#scNoAns").is(":checked") == true){
		$("select[name=bassSpainfSclasCode]").prop("disabled",true);
	}else{
		$("select[name=bassSpainfSclasCode]").prop("disabled",false);
	}
	//생산주체_생산부서
	if($("#prdDeptNoAns").is(":checked") == true){
		$("select[name=prdctnMagtPrdctnDeptCode]").prop("disabled",true);
	}else{
		$("select[name=prdctnMagtPrdctnDeptCode]").prop("disabled",false);
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
		,success : function(){
			$("form[name=searchForm]").submit();
		}
	});
	/*$("form[name=searchForm]").attr("action", "/nationList");
	$("form[name=searchForm]").submit();*/
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
			$("form[name=ManageVO]").submit();
		}
	});
}

/**
 * 국가중점 새 데이터 등록
 */
function insertNewData(){
	var url = "/nationAInsertView";
	var name = "nationData";
	var _left = (window.screen.width / 2) - (550 / 2);
    var _top = (window.screen.height / 2) - (450 / 2);

	var option = "width=550, height=500, left=" + _left + ", top=" + _top;
	window.open(url, name, option);
}

function saveData() {
	
	if($("input[name=dataId]").val()==""){
		alert("데이터ID를 입력해주세요.");
		$("input[name=dataId]").focus();
		return;
	}else if($("input[name=dataNm]").val()==""){
		alert("데이터명을 입력해주세요.");
		$("input[name=dataNm]").focus();
		return;
	}else if($("input[name=seKwrd]").val()==""){
		alert("구분 키워드를 입력해주세요.");
		$("input[name=seKwrd]").focus();
		return;
	}
	
	$("form[name=ManageVO]").attr("action", "/insertNationAData");
	$("form[name=ManageVO]").submit();
}

function selectDataId(){
	$("input[name=dataId]").val($("#selectDataANm").val());
	$("input[name=seKwrd]").val($("#selectDataANm option:selected").attr('data-title'));
}

/**
 * 오픈마켓 구분(조직) 등록
 */
function insertNewOrgan(){
	var url = "/seOrganInsertView";
	var name = "seOrganData";
	var _left = (window.screen.width / 2) - (550 / 2);
    var _top = (window.screen.height / 2) - (450 / 2);

	var option = "width=550, height=420, left=" + _left + ", top=" + _top;
	window.open(url, name, option);
}

function selectOrganId(){
	$("input[name=seOrganId]").val($("#selectSeOrganNm").val());
}

function saveOrganData() {
	
	if($("input[name=dataId]").val()==""){
		alert("조직ID를 입력해주세요.");
		$("input[name=dataId]").focus();
		return;
	}else if($("input[name=dataNm]").val()==""){
		alert("조직명을 입력해주세요.");
		$("input[name=dataNm]").focus();
		return;
	}
	
	$("form[name=ManageVO]").attr("action", "/insertSeOrganData");
	$("form[name=ManageVO]").submit();
}

window.onload = function(){
	
	//좌표계
	if($("#cntmNoAns").is(":checked") == true){
		$("select[name=dataCntmCode]").prop("disabled",true);
		$("select[name=spainfCntmCode]").prop("disabled",true);
	}else{
		$("select[name=dataCntmCode]").prop("disabled",false);
		$("select[name=spainfCntmCode]").prop("disabled",false);
	}
	//공개 배포 좌표계
	if($("#othbcCntmNoAns").is(":checked") == true){
		$("select[name=othbcDistbDataCntmCode]").prop("disabled",true);
	}else{
		$("select[name=othbcDistbDataCntmCode]").prop("disabled",false);
	}
	//갱신주기
	if($("#rnwNoAns").is(":checked") == true){
		$("select[name=rnewCycleCode]").prop("disabled",true);
	}else{
		$("select[name=rnewCycleCode]").prop("disabled",false);
	}
	//최종갱신시기
	if($("#lastNoAns").is(":checked") == true){
		$("select[name=lastRnewEraCode]").prop("disabled",true);
	}else{
		$("select[name=lastRnewEraCode]").prop("disabled",false);
	}
	//구축범위
	if($("#scopeNoAns").is(":checked") == true){
		$("select[name=constScopeCode]").prop("disabled",true);
	}else{
		$("select[name=constScopeCode]").prop("disabled",false);
	}
	//기본공간정보 대분류
	if($("#lcNoAns").is(":checked") == true){
		$("select[name=bassSpainfLclasCode]").prop("disabled",true);
	}else{
		$("select[name=bassSpainfLclasCode]").prop("disabled",false);
	};
	//기본공간정보 중분류
	if($("#mlNoAns").is(":checked") == true){
		$("select[name=bassSpainfMlsfcCode]").prop("disabled",true);
	}else{
		$("select[name=bassSpainfMlsfcCode]").prop("disabled",false);
	}
	//기본공간정보 소분류
	if($("#scNoAns").is(":checked") == true){
		$("select[name=bassSpainfSclasCode]").prop("disabled",true);
	}else{
		$("select[name=bassSpainfSclasCode]").prop("disabled",false);
	}
	//생산주체_생산부서
	if($("#prdDeptNoAns").is(":checked") == true){
		$("select[name=prdctnMagtPrdctnDeptCode]").prop("disabled",true);
	}else{
		$("select[name=prdctnMagtPrdctnDeptCode]").prop("disabled",false);
	}
	
	$("input[name=searchKeyword]").keydown(function (key) {
        if(key.keyCode == 13){//enter
            search();
        }
    });
	
	//검색어 입력여부 
	if(!$("#searchKeyword").val()){
		document.getElementById("searchKeyword").className="form-control";
	}else{
		document.getElementById("searchKeyword").className="form-control fill";
		
	}
};


	
	

	
