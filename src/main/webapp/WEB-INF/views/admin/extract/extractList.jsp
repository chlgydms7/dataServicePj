<%@page import="com.jhit.admin.monitor.vo.MonitoringVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<style type="text/css">
.btn{
	padding: 0px !important;
}
.table td,.table th {
    padding: .75rem;
    vertical-align: middle !important;
}

.floating{
	position: fixed;
	right: 50%;
	top: 180px;
	margin-right: -925px;
	text-align: center;
	width: 261px;
	border: 1px solid #ccc;
	background-color: #f5f5f5;
	height: 400px;
	border-radius: 10px;
}

/* .grid_4{
	width:300px;display:inline;float:right;margin-left:10px;margin-right:10px;padding:10px;color:#fff;background-color:#ccc
} */
</style>
<main>
<div class="pcoded-main-container" style="background: #ffffff;">
<div class="pcoded-wrapper">
<nav class="pcoded-navbar">
       <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
       <div class="pcoded-inner-navbar main-menu">
           <div class="pcoded-navigation-label">HOME</div>
           <ul class="pcoded-item pcoded-left-item">
               <li class="">
                   <a href="/" class="waves-effect waves-dark">
                       <span class="pcoded-micon"><i class="ti-home"></i></span>
                       <span class="pcoded-mtext">관리자시스템</span>
                       <span class="pcoded-mcaret"></span>
                   </a>
               </li>
           </ul>
           <ul class="pcoded-item pcoded-left-item">
               <li class="pcoded-hasmenu">
               <div class="pcoded-navigation-label">menu</div>
                   <a href="javascript:void(0)" class="waves-effect waves-dark">
                       <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                       <span class="pcoded-mtext">데이터 관리</span>
                       <span class="pcoded-mcaret"></span>
                   </a>
                   <ul class="pcoded-submenu">
                       <li class="">
                           <a href="/nationList" class="waves-effect waves-dark">
                               <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                               <span class="pcoded-mtext">국가중점데이터</span>
                               <span class="pcoded-mcaret"></span>
                           </a>
                       </li>
                       <li class="">
                           <a href="/openList" class="waves-effect waves-dark">
                               <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                               <span class="pcoded-mtext">오픈마켓</span>
                               <span class="pcoded-mcaret"></span>
                           </a>
                       </li>
                       <li class="">
                           <a href="/constList" class="waves-effect waves-dark">
                               <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                               <span class="pcoded-mtext">건축데이터개방</span>
                               <span class="pcoded-mcaret"></span>
                           </a>
                       </li>
                   </ul>
               </li>
           </ul>
           
           <ul class="pcoded-item pcoded-left-item">
               <li class="pcoded-hasmenu">
                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                        <span class="pcoded-mtext">모니터링</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                    <ul class="pcoded-submenu">
                        <li class=" ">
                            <a href="/loaderMonitoring" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">데이터 적재</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="/extractMonitoring" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">데이터 추출</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                     </ul>
                 </li>
        </ul>
        <ul class="pcoded-item pcoded-left-item">
            <li class="active">
                <a href="/extractList" class="waves-effect waves-dark">
                    <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b></b></span>
                    <span class="pcoded-mtext">데이터 추출</span>
                    <span class="pcoded-mcaret"></span>
                </a>
            </li>
        </ul>
    </div>
</nav>
<div class="pcoded-content">
     <!-- Page-header start -->
     <div class="page-header">
         <div class="page-block">
             <div class="row align-items-center">
                 <div class="col-md-8">
                     <div class="page-header-title">
                         <h5 class="m-b-10">데이터 추출</h5>
                     </div>
                 </div>
                 <div class="col-md-4">
                     <ul class="breadcrumb">
                         <li class="breadcrumb-item">
                             <a href="/"> <i class="fa fa-home"></i> </a>
                         </li>
                         <li class="breadcrumb-item"><a href="/extractList">데이터 추출</a>
                         </li>
                     </ul>
                 </div>
             </div>
         </div>
     </div>
     <!-- Page-header end -->

<!-- container Start-->
	<div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                            
                            <!-- side bar start -->
                            <form name="sidebarForm">
                            <div class="floating" id="sidebar">
                            	<div style="background-color: #615f5f; height: 41px;font-size: 20px;color: #ffffff; border-top-left-radius: 7px;border-top-right-radius: 7px;"><b>담기 목록</b></div>
                            	<div id="sidebarContent" style="height: 300px;overflow: scroll;">
                            	<input type="hidden" name="tableEngNm" id="tableEngNm" value=""/>
                            	<input type="hidden" name="extrcScope" id="extrcScope" value="" />
                            	<input type="hidden" name="extrcLo" id="extrcLo" value="" />
                            	<input type="hidden" name="dataGb" id="dataGb" value="" />
                            	
                            	</div>
                            	<div style="margin-top: 15px;">
	                            	<button type="button" class="btn btn-inverse waves-effect waves-light" style="width: 50px; height: 30px; border-radius: 5px;" onclick="removeList();">삭제</button>
	                            	<button type="button" class="btn btn-inverse waves-effect waves-light" style="width: 50px; height: 30px; border-radius: 5px;" onclick="extractList();">추출</button>
                            	</div>
                            </div>
                            </form>
                            <!-- side bar end -->
                            
	                            <!-- searchform start -->
	                            <div class="p-15 p-b-0" style="width: 1200px; margin-top: 60px; margin-left: 130px;">
	                                <form class="form-material" name="searchForm">
										<%-- <select class="select" name="searchCondition" id="searchCondition" style="line-height: 49px;">
											<option value="dataNm" <c:if test="${vo.searchCondition eq 'dataNm' }">selected="selected"</c:if>>정보 명</option>
											<option value="dataTyCode" <c:if test="${vo.searchCondition eq 'dataTyCode' }">selected="selected"</c:if>>데이터 유형</option><!-- 속성/공간 -->
										</select> --%>
	                                    <div class="form-group form-primary" style="margin-left: 3px; margin-top: -45px;">
	                                        <input type="text" name="searchKeyword" id="searchKeyword" class="form-control fill" value="${vo.searchKeyword }">
	                                        <%-- <input type="text" class="form-control" id="searchKeyword" name="searchKeyword" style="margin-left: 5px;" placeholder='검색어를 입력하세요.'	onfocus="this.placeholder = ''" onblur="this.placeholder = '검색어를 입력하세요.'" value="${vo.searchKeyword }"> --%>
	                                        <span class="form-bar"></span>
	                                        <label class="float-label"><i class="fa fa-search m-r-10"></i>검색어를 입력하세요.</label>
	                                    </div>
	                                </form>
	                            </div>
	                            <!-- searchform end -->
	                            
                           			<!-- select category start -->
										<form name="selectForm" style="width: 1168px; margin-left: 146px;margin-top: 45px;">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<input type="hidden" name="sidoCode" value="">
										<input type="hidden" name="sigunguCode" value="">
										<input type="hidden" name="umdCode" value="">
										<input type="hidden" name="code" value="">
										
											<div id="selectBox" style="margin-bottom: 10px;">
												<select name="sido" id="sido" onchange="sidoSelect(this)">
														<option value="">시도</option>
														<c:forEach items="${sidoCode }" var="LCode" >
															<option id="01" value="${LCode.bjdongCode }">${LCode.legaldongNm }</option>
														</c:forEach>
												</select>
												<select name="sigungu" id="sigungu" onchange="sigunguSelect(this)">
														<option value="">시군구</option>
														<c:forEach items="${sigunguCode }" var="MCode" >
															<option id="02" value="${MCode.bjdongCode }">${MCode.legaldongNm }</option>
														</c:forEach>
												</select>
												<select name="umd" id="umd"  onchange="umdSelect(this)">
														<option value="">읍면동</option>
														<c:forEach items="${umdCode }" var="SCode" >
															<option id="03" value="${SCode.bjdongCode }">${SCode.legaldongNm }</option>
														</c:forEach>
												</select>
												<%-- <select name="li" id="li">
														<option value="">리</option>
														<c:forEach items="${liCode }" var="SsCode" >
															<option id="04" value="${SsCode.bjdongCode }">${SsCode.legaldongNm }</option>
														</c:forEach>
												</select> --%>
											</div>
										</form>
										<!-- select category end -->
										
										<form name="MonitoringVO" method="POST">
									 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<div class="container"	style="margin-top: 18px; width: 1200px; height: 100%;margin-left: 131px;max-width: 1300px !important;">
										
											<input type="hidden" name="jobName" id="jobName" value="" />
											<input type="hidden" name="jobExecutionId" id="jobExecutionId" value="" />
											<table class="table table-style-2 wishlist-table text-center">
												<thead class="table-head">
													<tr style="background: rgba(191, 191, 191, 0.2);">
														<th style="font-size: 16px; width: 5%;"><b>번호</b></th>
														<th style="font-size: 16px; width: 30%;"><b>정보명 </b></th>
														<th style="font-size: 16px; width: 20%;"><b>기준일자</b></th>
														<th style="font-size: 16px; width: 13%;"><b>오류여부</b></th>
														<th style="font-size: 16px; width: 12%;"><b>다운로드</b></th>
														<th style="font-size: 16px; width: 10%;"><b>유형</b></th>
														<th style="font-size: 16px; width: 10%;"></th>
													</tr>
												</thead>
												<tbody>
												<!-- 리스트 출력 -->
												<c:if test="${totalCount != 0}">
													<c:forEach items="${lists }" var="dataList" varStatus="status">
														<input type="hidden" id="listSize" value="${status.end }" />
														<tr class="table-tr">
															<td>${dataList.rn }</td>
															<td>${dataList.tableKorNm }</td>
															<td>${dataList.lastUpdtDt }</td>
															<c:if test="${dataList.errorYn eq 'Y' }">
																<td style="color: red;cursor: pointer;" >
																	<button type="button" class="btn btn-danger waves-effect waves-light" onclick="errorList('${dataList.tableEngNm}','${dataList.tableKorNm }');" style="border-radius: 7px;height: 35px;width: 70px;">오류내역</button>
																</td>
															</c:if>
															<c:if test="${dataList.errorYn ne 'Y' }"><td></td></c:if>
															
															<td id="downloadAt"><c:if test="${dataList.lastUpdtDt eq null || dataList.tableEngNm eq 'z_luris_lsct_comcode' }">불가능</c:if><c:if test="${dataList.lastUpdtDt ne null && dataList.tableEngNm ne 'z_luris_lsct_comcode'}">가능</c:if></td>
															<td>${dataList.dataGbNm }</td>
															<td>
																<button type="button" class="btn btn-primary waves-effect waves-light" onclick="addCart('${dataList.tableKorNm}','${dataList.tableEngNm }','${dataList.dataGb }','${dataList.lastUpdtDt }');" style="border-radius: 7px;height: 35px;width: 70px;">담기</button>
															</td> 
														</tr>
													</c:forEach>
												</c:if>
												<c:if test="${totalCount == 0 }">
													<tr>
														<td colspan="7">
															<p>추출가능한 데이터가 없습니다.</p>
														</td>
													</tr>
												</c:if>
												<!-- 리스트 출력 end -->
												</tbody>
											</table>
										
										<%-- <!-- 페이징 start -->
										<%@include file="/WEB-INF/views/admin/util/paging.jsp" %>
									   <!-- 페이징 end --> --%>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<!-- modal start -->
<div class="modal">
	<div class="modal_content" style="width: 777px;left: 43%;">
	    <!-- 모달 스텝명 header start -->
	 	<div class="modal_header">
	 	</div>
	 	<!-- 모달 스텝명 header end -->
	 	
	 	<form name="modalForm">
	 	<input type="hidden" name="date" id="date" value="" />
	 	<!-- 모달 로그 테이블 start -->
	 	<div style="padding: 15px; height: 400px; overflow: auto;" id="modalTable">
	 	</div>
	 	<!-- 모달 로그 테이블 end -->
	 	</form>
	 	<button type="button" class="btn-inverse waves-effect waves-light" style="margin-top: 20px; width: 90px; height: 35px; border-radius: 5px;" onclick="closeModal();">닫기</button>
	</div>
</div>
<!-- modal end -->
	<!-- container end -->
</main>

<script src="<%=request.getContextPath() %>/resources/js/extract/extract.js" charset="utf-8" ></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>