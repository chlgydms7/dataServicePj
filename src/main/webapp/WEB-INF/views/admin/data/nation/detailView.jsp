<%@page import="com.jhit.admin.manage.vo.ManageVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<%-- <% response.setHeader("Cache-Control","no-store"); response.setHeader("Pragma","no-cache"); response.setDateHeader("Expires",0); if (request.getProtocol().equals("HTTP/1.1")) response.setHeader("Cache-Control", "no-cache"); %> --%>
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
            <li class="pcoded-hasmenu active pcoded-trigger">
            <div class="pcoded-navigation-label">menu</div>
                <a href="javascript:void(0)" class="waves-effect waves-dark">
                    <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                    <span class="pcoded-mtext">데이터 관리</span>
                    <span class="pcoded-mcaret"></span>
                </a>
                <ul class="pcoded-submenu">
                    <li class="active">
                        <a href="/nationList" class="waves-effect waves-dark">
                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                            <span class="pcoded-mtext">국가중점데이터</span>
                            <span class="pcoded-mcaret"></span>
                        </a>
                    </li>
                    <li class=" ">
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
            <li class="">
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
	                    <h5 class="m-b-10">국가중점데이터 상세</h5>
	                </div>
	            </div>
	            <div class="col-md-4">
	                <ul class="breadcrumb">
	                    <li class="breadcrumb-item">
	                        <a href="/"> <i class="fa fa-home"></i> </a>
	                    </li>
	                    <li class="breadcrumb-item"><a href="/nationList">데이터 관리</a>
	                    </li>
	                    <li class="breadcrumb-item"><a href="/nationList">국가중점데이터</a>
	                    </li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- Page-header end -->

	<!-- container Start-->

		<h3 class="title-dec">${list.dataNm }</h3>
		<div class="row justify-content-center">
			<form name="ManageVO" method="POST">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="metdataId" value="${list.metdataId }" />
			<input type="hidden" name="nowPage" value="${nowPage }" />
			<input type="hidden" name="searchCondition" value="${searchCondition }" />
			<input type="hidden" name="searchKeyword" value="${searchKeyword }" />
			<div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body" style="padding-left: 40px;">
                                        <!-- Basic table card start -->
                                        <div class="card">
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
											<table class="table" style="">
												<colgroup>
													<col width="5%">
													<col width="10%">
													<col width="35%">
													<col width="15%">
													<col width="35%">
												</colgroup>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">데이터ID</td>
													<td class="tr-border">
														<c:out value="${list.dataId }" /> 
													</td>
													<td class="tr-border">데이터 명</td>
													<td class="tr-border">
														<c:out value="${list.groupDataNm }" /> 
													</td>
												</tr>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">메타데이터ID</td>
													<td class="tr-border">
														<c:out value="${list.metdataId }" /> 
													</td>
													<td class="tr-border">메타데이터 명</td>
													<td class="tr-border">
														<c:out value="${list.dataNm }" /> 
													</td>
												</tr>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">데이터 유형</td>
													<td class="tr-border">
														<c:out value="${list.dataTyCode }" /> 
													</td>
													<td class="tr-border">구분(키워드)</td>
													<td class="tr-border">
														<c:out value="${list.seKwrd }" /> 
													</td>
												</tr>
												
												<tr class="tr-border">
													<td colspan="2" class="tr-border">변동데이터 여부</td>
													<td colspan="3" class="tr-border">
														<c:out value="${list.changeDataAt }" /> 
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="2" class="tr-border">생산<br/>주체</td>
													<td class="tr-border">관리기관>부서</td>
													<td class="tr-border">
														<c:out value="${list.prdctnMagtManageInsttCode }" /> &gt; <c:out value="${list.prdctnMagtManageDeptCode }" />
													</td>
													<td class="tr-border">시스템명</td>
													<td class="tr-border">
														<c:out value="${list.prdctnMagtSysNm }" /> 
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">생산기관>부서</td>
													<td class="tr-border">
														<c:out value="${list.prdctnMagtPrdctnInsttCode }" /> &gt; <c:out value="${list.prdctnMagtPrdctnDeptCode }" /> 
													</td>
													<td class="tr-border">갱신 주기</td>
													<td class="tr-border">
														<c:out value="${list.prdctnMagtRnewCycle }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="2" class="tr-border">취합</br>주체</td>
													<td class="tr-border">관리기관>부서</td>
													<td class="tr-border">
														<c:out value="${list.aggrMagtManageInsttCode }" /> &gt; <c:out value="${list.aggrMagtManageDeptCode }" />
													</td>
													<td class="tr-border">시스템명</td>
													<td class="tr-border">
														<c:out value="${list.aggrMagtSysNm }" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">수집주기</td>
													<td class="tr-border">
														<c:out value="${list.aggrMagtColctCycleCode }" />
													</td>
													<td class="tr-border">수집방법</td>
													<td class="tr-border">
														<c:out value="${list.aggrMagtColctMthCode }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="2" class="tr-border">공간<br/>정보</td>
													<td class="tr-border">타원체</td>
													<td class="tr-border">
														<c:out value="${list.spainfEllips }" />
													</td>
													<td class="tr-border">좌표계</td>
													<td class="tr-border">
														<c:out value="${list.spainfCntmCode }" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">투영법</td>
													<td class="tr-border">
														<c:out value="${list.spainfPrj }" />
													</td>
													<td class="tr-border">객체 형태</td>
													<td class="tr-border">
														<c:out value="${list.spainfObjectfomCode }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td class="tr-border">구축</td> 
													<td class="tr-border">지리적 범위</td>
													<td class="tr-border">
														<c:out value="${list.constGeoScopeCode }" />
													</td>
													<td class="tr-border">시간적 범위</td>
													<td class="tr-border">
														<c:out value="${list.constTimeScope }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="2" class="tr-border">공개</td>
													<td class="tr-border">개방시스템</td>
													<td class="tr-border" colspan="3">
														<c:out value="${list.othbcOpnSys }" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">배포 데이터 좌표계</td>
													<td class="tr-border">
														<c:out value="${list.othbcDistbDataCntmCode }" />
													</td>
													<td class="tr-border">배포 데이터 포맷</td>
													<td class="tr-border">
														<c:out value="${list.othbcDistbDataFomCode }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td class="tr-border">유통</td>
													<td class="tr-border">가격 정책</td>
													<td class="tr-border">
														<c:out value="${list.distbPcPolicy }" />
													</td>
													<td class="tr-border">판매 방법</td>
													<td class="tr-border">
														<c:out value="${list.distbSellMth }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td colspan="2" class="tr-border">데이터 설명</td>
													<td colspan="3" class="tr-border">
														<textarea class="td-content white" style="height: 200px;" readonly="readonly" >${list.dataDcCn }</textarea>
													</td>
												</tr>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">비고</td>
													<td colspan="3" class="tr-border">
														<c:out value="${list.rm }" />
													</td>
												</tr>
											</table>
											
											<table class="table" style="">
												<colgroup>
													<col width="15%">
													<col width="35%">
													<col width="15%">
													<col width="35%">
												</colgroup>
												<tr>
													<td class="">등록자</td>
													<td colspan="3" class="tr-border">
														<input type="text" class="white" readonly="readonly" value="${list.registerId }" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">등록일시</td>
													<td class="tr-border">
														<input type="text" class="white" readonly="readonly" value="${list.regDt }" />
													</td>
													<td class="tr-border">수정일시</td>
													<td class="tr-border">
														<input type="text" class="white" readonly="readonly" value='<c:if test="${list.updtDt==null }">N/A</c:if><c:if test="${list.updtDt!=null }">${list.updtDt }</c:if>' />
													</td>
												</tr>
											</table>
										</div>
                                      </div>
                                  </div>
                                  <!-- Background Utilities table end -->
                              </div>
                              <!-- Page-body end -->
                          </div>
                      </div>
                </div>
                      <!-- Main-body end -->
				<div style="padding-left: 990px; margin-bottom: 70px;">
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="getNationList();">목록</button>
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="updateNationView();" >수정</button>
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="deleteNationView();" >삭제</button>
				</div>
			</form>
		</div>
	<!-- container end -->

<script src="<%=request.getContextPath() %>/resources/js/data/data.js" charset='UTF-8'></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>