<%@page import="com.jhit.admin.manage.vo.ManageVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<main>
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
                                        <li class="">
                                            <a href="/nationList" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">국가중점데이터</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="active">
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
                                            <h5 class="m-b-10">오픈마켓 상세</h5>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="/"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="/nationList">데이터 관리</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="/openList">오픈마켓</a>
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
			<input type="hidden" name="dataId" value="${list.dataId }" />
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
														<col width="15%">
														<col width="35%">
														<col width="15%">
														<col width="35%">
													</colgroup>
													<tr class="tr-border">
														<td class="tr-border">데이터 명</td>
														<td colspan="3" class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.dataNm }" />
														</td>
													</tr>
													<tr class="tr-border">
														<td class="tr-border">데이터ID</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.dataId }" />
														</td>
														<td class="tr-border">데이터 유형</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.dataTyCode }" />
														</td>
													</tr>
													
													<tr class="tr-border">
														<td class="tr-border">구분(조직)</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.seOrganNm }" />
														</td>
														<td class="tr-border">구분(조직ID)</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.seOrganId }" />
														</td>
													</tr>
													<tr class="tr-border">
														<td class="tr-border">갱신 주기</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.rnewCycleCode }" />
														</td>
														<td class="tr-border">최종 갱신 시기</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.lastRnewEraCode }" />
														</td>
													</tr>
													<tr class="tr-border">
														<td class="tr-border">데이터 좌표계</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value='<c:if test="${list.dataCntmCode==null }">해당없음</c:if><c:if test='${list.dataCntmCode!=null }'>${list.dataCntmCode }</c:if>' />
														</td>
														<td class="tr-border">데이터 포맷</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.dataFomCode }" />
														</td>
													</tr>
													<tr class="tr-border">
														<td class="tr-border">구축 범위</td>
														<td class="tr-border" colspan="3">
															<input type="text" class="white" readonly="readonly" value="${list.constScopeCode }" />
														</td>
													</tr>
													<tr class="tr-border">
														<td class="tr-border">공간정보분류</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value="${list.spainfLclasCode } &gt; ${list.spainfMlsfcCode }" />
														</td>
														<td class="tr-border">기본공간정보분류</td>
														<td class="tr-border">
															<input type="text" class="white" readonly="readonly" value='<c:if test="${list.bassSpainfLclasCode eq null && list.bassSpainfMlsfcCode eq null && list.bassSpainfSclasCode eq null  }">해당없음</c:if><c:if test="${list.bassSpainfLclasCode!=null }">${list.bassSpainfLclasCode } &gt; </c:if><c:if test="${list.bassSpainfMlsfcCode!=null }">${list.bassSpainfMlsfcCode } &gt; </c:if><c:if test="${list.bassSpainfSclasCode!=null }">${list.bassSpainfSclasCode }</c:if>' />
														</td>
													</tr>
													<tr class="tr-border">
														<td class="tr-border">데이터 설명</td>
														<td colspan="3" class="tr-border">
															<%-- <input type="text" class="form-control td-content white" readonly="readonly" value="${list.dataDcCn }" /> --%>
															<textarea class="td-content white" style="height: 200px;" readonly="readonly" >${list.dataDcCn }</textarea>
														</td>
													</tr>
												</table>
												
												<table class="table">
													<colgroup>
														<col width="15%">
														<col width="35%">
														<col width="15%">
														<col width="35%">
													</colgroup>
													<tr>
														<td class="tr-border">등록자</td>
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
							</div>
						</div>
					</div>
				</div>
				<div  style="padding-left: 990px; margin-bottom: 70px;">
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="getOpenList();">목록</button>
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="updateOpenView();" >수정</button>
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="deleteOpenView();" >삭제</button>
				</div>
			</form>
		</div>
	<!-- container end -->
</main>

<script src="<%=request.getContextPath() %>/resources/js/data/data.js" charset='UTF-8'></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>