<%@page import="com.jhit.admin.manage.vo.ManageVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%-- <%@ taglib prefix="fmt" uri=" http://java.sun.com/jsp/jstl/fmt "%> --%>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
                                            <h5 class="m-b-10">국가중점데이터 등록</h5>
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

	<!-- <div class="container" style="width: 100%"> -->
		<div class="row justify-content-center">
			<form name="ManageVO" method="POST" class="p-5 contact-form">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="registerId" value="${id }">
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
															<td colspan="2" class="tr-border">데이터 명</td>
															<td class="tr-border">
																<select class="select selectDataId" id="selectDataANm" style="height: 46px;" onchange="selectDataId();">
																	<option disabled="disabled" selected="selected">선택</option>
																	<c:forEach var="data" items="${nationData }">
																		<option data-title="${data.seKwrd }" value="${data.dataId }">${data.dataNm }</option>
																	</c:forEach>
																</select>
																<input type="button" class="btn-usr" onclick="insertNewData();" value="새 데이터 등록">
															</td>
															<td class="tr-border">데이터ID</td>
															<td class="tr-border">
																<input type="text" class="form-control white readonly" name="dataId" readonly="readonly" /> <!-- dtlt002 목록과 연관 -->
															</td>
														</tr>
														<tr class="tr-border">
															<td colspan="2" class="tr-border">메타데이터 명</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="dataNm" maxlength="25" />
															</td>
															<td class="tr-border">메타데이터ID</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="metdataId" maxlength="25" />
															</td>
														</tr>
														<tr class="tr-border">
															<td colspan="2" class="tr-border">데이터 유형</td>
															<td class="tr-border">
																<input type="radio" name="dataTyCode" value="01" checked="checked">속성
																<input type="radio" name="dataTyCode" value="02">공간
																<input type="radio" name="dataTyCode" value="03">미지정
															</td>
															<td class="tr-border">구분(키워드)</td>
															<td class="tr-border">
																<input type="text" class="form-control white readonly" name="seKwrd" value="" readonly="readonly" maxlength="500" />
															</td>
														</tr>
														
														<tr class="tr-border">
															<td colspan="2" class="tr-border">변동데이터 여부</td>
															<td colspan="3" class="tr-border">
																<input type="text" class="form-control white" value="" placeholder="(Y/N)" onfocus="this.placeholder=''" onblur="this.placeholder = '(Y/N)'" maxlength="1" />
															</td>
														</tr>
														
														<tr class="tr-border">
															<td rowspan="3" class="tr-border">생산<br/>주체</td>
															<td class="tr-border">관리기관</td>
															<td class="tr-border">
																<select class="select select-ht" name="prdctnMagtManageInsttCode">
																	<c:forEach var="dta" items="${dta004 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
															<td class="tr-border">관리부서</td>
															<td class="tr-border">
																<select class="select" name="prdctnMagtManageDeptCode">
																	<c:forEach var="dta" items="${dta005 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
														</tr>
														<tr class="tr-border">
															<td class="tr-border">생산기관</td>
															<td class="tr-border">
																<select class="select" name="prdctnMagtPrdctnInsttCode">
																	<c:forEach var="dta" items="${dta004 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
															<td class="tr-border">생산부서</td>
															<td class="tr-border">
																<select class="select" name="prdctnMagtPrdctnDeptCode">
																	<c:forEach var="dta" items="${dta005 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
																<input type="checkbox" id="prdDeptNoAns" onclick="selectDisabled();">해당없음
															</td>
														</tr>
														<tr class="tr-border">
															<td class="tr-border">시스템명</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="prdctnMagtSysNm" maxlength="100" />
															</td>
															<td class="tr-border">갱신 주기</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="prdctnMagtRnewCycle" maxlength="500" />
															</td>
														</tr>
														
														<tr class="tr-border">
															<td rowspan="3" class="tr-border">취합</br>주체</td>
															<td class="tr-border">관리기관</td>
															<td class="tr-border">
																<select class="select" name="aggrMagtManageInsttCode">
																	<c:forEach var="dta" items="${dta004 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
															<td class="tr-border">관리부서</td>
															<td class="tr-border">
																<select class="select" name="aggrMagtManageDeptCode">
																	<c:forEach var="dta" items="${dta005 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
														</tr>
														<tr class="tr-border">
															<td class="tr-border">수집주기</td>
															<td class="tr-border">
																<select class="select" name="aggrMagtColctCycleCode">
																	<c:forEach var="dta" items="${dta006 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
															<td class="tr-border">수집방법</td>
															<td class="tr-border">
																<input type="radio" class="radio" name="aggrMagtColctMthCode" value="01" checked="checked">생산
																<input type="radio" name="aggrMagtColctMthCode" value="02">연계
															</td>
														</tr>
														<tr class="tr-border">
															<td class="tr-border">시스템명</td>
															<td colspan="3" class="tr-border">
																<input type="text" class="form-control white" name="aggrMagtSysNm" maxlength="100" />
															</td>
														</tr>
														
														<tr class="tr-border">
															<td rowspan="2" class="tr-border">공간<br/>정보</td>
															<td class="tr-border">타원체</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="spainfEllips" maxlength="500" />
															</td>
															<td class="tr-border">좌표계</td>
															<td class="tr-border">
																<select class="select" name="spainfCntmCode">
																	<c:forEach var="dta" items="${dta003 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
																<input type="checkbox" id="cntmNoAns" onclick="selectDisabled();">해당없음
															</td>
														</tr>
														<tr class="tr-border">
															<td class="tr-border">투영법</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="spainfPrj" maxlength="500" />
															</td>
															<td class="tr-border">객체 형태</td>
															<td class="tr-border">
																<input type="radio" name="spainfObjectfomCode" value="01" checked="checked">점
																<input type="radio" name="spainfObjectfomCode" value="02">면
																<input type="radio" name="spainfObjectfomCode">해당없음
															</td>
														</tr>
														
														<tr class="tr-border">
															<td class="tr-border">구축</td>
															<td class="tr-border">지리적 범위</td>
															<td class="tr-border">
																<select class="select" name="constGeoScopeCode">
																	<c:forEach var="dta" items="${dta009 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
															<td class="tr-border">시간적 범위</td>
															<td class="tr-border">
																<input type="text" class="form-control white" name="constTimeScope" maxlength="500" />
															</td>
														</tr>
														
														<tr class="tr-border">
															<td rowspan="2" class="tr-border">공개</td>
															<td class="tr-border">개방시스템</td>
															<td class="tr-border" colspan="3">
																<input type="text" class="form-control white" name="othbcOpnSys" maxlength="500" />
															</td>
														</tr>
														<tr class="tr-border">
															<td class="tr-border">배포 데이터<br/>좌표계</td>
															<td class="tr-border">
																<select class="select" name="othbcDistbDataCntmCode">
																	<c:forEach var="dta" items="${dta003 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
																<input type="checkbox" id="othbcCntmNoAns" onclick="selectDisabled();">해당없음
															</td>
															<td class="tr-border">배포 데이터 포맷</td>
															<td class="tr-border">
																<select class="select" name="othbcDistbDataFomCode">
																	<c:forEach var="dta" items="${dta015 }">
																		<option value="${dta.codeSn }">${dta.codeCn }</option>
																	</c:forEach>
																</select>
															</td>
														</tr>
														
														<tr class="tr-border">
															<td class="tr-border">유통</td>
															<td class="tr-border">가격 정책</td>
															<td class="tr-border">
																<input type="text" class="white" name="distbPcPolicy" maxlength="500" />
															</td>
															<td class="tr-border">판매 방법</td>
															<td class="tr-border">
																<input type="text" class="white" name="distbSellMth" maxlength="500" />
															</td>
														</tr>
														
														<tr class="tr-border">
															<td colspan="2" class="tr-border">데이터 설명</td>
															<td colspan="3" class="tr-border">
																<textarea class="td-content white" style="height: 200px;" name="dataDcCn" maxlength="2000"></textarea>
															</td>
														</tr>
														<tr class="tr-border">
															<td colspan="2" class="tr-border">비고</td>
															<td colspan="3" class="tr-border">
																<input type="text" class="td-content white" name="rm" />
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
						<div style="padding-left: 990px;">
						<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="getNationList();">취소</button>
						<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="saveNation();">저장</button>
						</div>
					</form>
					</div>
				</div>
</main>

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/data/data.js" charset="utf-8"></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>