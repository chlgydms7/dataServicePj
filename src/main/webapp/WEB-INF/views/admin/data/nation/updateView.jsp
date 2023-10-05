<%@page import="com.jhit.admin.manage.vo.ManageVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%-- <%@ taglib prefix="fmt" uri=" http://java.sun.com/jsp/jstl/fmt "%> --%>

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
                                            <h5 class="m-b-10">국가중점데이터 수정</h5>
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
			<form name="ManageVO" method="POST" class="contact-form">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="metdataId" value="" />
			<input type="hidden" name="nowPage" value="${nowPage }">
				<div class="pcoded-inner-content">
	                            <!-- Main-body start -->
	                            <div class="main-body">
	                                <div class="page-wrapper">
	                                    <!-- Page-body start -->
	                                    <div class="page-body"  style="padding-left: 40px;">
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
														<select class="select" id="selectDataANm" style="height: 46px;" onchange="selectDataId();">
															<c:forEach var="data" items="${nationData }">
																<option data-title="${data.seKwrd }" value="${data.dataId }" <c:if test="${data.dataId eq list.dataId }">selected="selected"</c:if>>${data.dataNm }</option>
															</c:forEach>
														</select>
														<input type="button" class="btn-usr" onclick="insertNewData();" value="새 데이터 등록">
													</td>
													<td class="tr-border">데이터ID</td>
													<td class="tr-border">
														<input type="text" class="form-control white readonly" name="dataId" readonly="readonly" value="${list.dataId }" maxlength="25" /> <!-- dtlt002 목록과 연관 -->
													</td>
												</tr>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">메타데이터 명</td>
													<td class="tr-border">
														<input type="text" class="form-control white readonly" name="dataNm" readonly="readonly" value="${list.dataNm }" maxlength="25" />
													</td>
													<td class="tr-border">메타데이터ID</td>
													<td class="tr-border">
														<input type="text" class="form-control white readonly" readonly="readonly" value="${list.metdataId }" maxlength="25" />
													</td>
												</tr>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">데이터 유형</td>
													<td class="tr-border">
														<input type="radio" name="dataTyCode" value="01" <c:if test="${list.dataTyCode eq '속성' }">checked="checked"</c:if>>속성
														<input type="radio" name="dataTyCode" value="02" <c:if test="${list.dataTyCode eq '공간' }">checked="checked"</c:if>>공간
														<input type="radio" name="dataTyCode" value="03" <c:if test="${list.dataTyCode eq '미지정' }">checked="checked"</c:if>>미지정
													</td>
													<td class="tr-border">구분(키워드)</td>
													<td class="tr-border">
														<input type="text" class="form-control white readonly" name="seKwrd" readonly="readonly" value="${list.seKwrd }" maxlength="500" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td colspan="2" class="tr-border">변동데이터 여부</td>
													<td colspan="3" class="tr-border">
														<input type="text" class="form-control white" value="${list.changeDataAt }" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="3" class="tr-border">생산<br/>주체</td>
													<td class="tr-border">관리기관</td>
													<td class="tr-border">
														<select class="select" name="prdctnMagtManageInsttCode">
															<c:forEach var="dta" items="${dta004 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.prdctnMagtManageInsttCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
													<td class="tr-border">관리부서</td>
													<td class="tr-border">
														<select class="select" name="prdctnMagtManageDeptCode">
															<c:forEach var="dta" items="${dta005 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.prdctnMagtManageDeptCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">생산기관</td>
													<td class="tr-border">
														<select class="select" name="prdctnMagtPrdctnInsttCode">
															<c:forEach var="dta" items="${dta004 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.prdctnMagtPrdctnInsttCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
													<td class="tr-border">생산부서</td>
													<td class="tr-border">
														<select class="select" name="prdctnMagtPrdctnDeptCode">
															<c:forEach var="dta" items="${dta005 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.prdctnMagtPrdctnDeptCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
														<input type="checkbox" id="prdDeptNoAns" onclick="selectDisabled();" <c:if test="${list.prdctnMagtPrdctnDeptCode eq null || list.prdctnMagtPrdctnDeptCode eq '' }">checked="checked"</c:if>>해당없음
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">시스템명</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="prdctnMagtSysNm" value="${list.prdctnMagtSysNm }" maxlength="100" />
													</td>
													<td class="tr-border">갱신 주기</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="prdctnMagtRnewCycle" value="${list.prdctnMagtRnewCycle }" } maxlength="500" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="3" class="tr-border">취합</br>주체</td>
													<td class="tr-border">관리기관</td>
													<td class="tr-border">
														<select class="select" name="aggrMagtManageInsttCode">
															<c:forEach var="dta" items="${dta004 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.aggrMagtManageInsttCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
													<td class="tr-border">관리부서</td>
													<td class="tr-border">
														<select class="select" name="aggrMagtManageDeptCode">
															<c:forEach var="dta" items="${dta005 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.aggrMagtManageDeptCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">수집주기</td>
													<td class="tr-border">
														<select class="select" name="aggrMagtColctCycleCode">
															<c:forEach var="dta" items="${dta006 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.aggrMagtColctCycleCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
													<td class="tr-border">수집방법</td>
													<td class="tr-border">
														<input type="radio" name="aggrMagtColctMthCode" value="01" <c:if test="${list.aggrMagtColctMthCode == '생산' }">checked="checked"</c:if>>생산
														<input type="radio" name="aggrMagtColctMthCode" value="02" <c:if test="${list.aggrMagtColctMthCode == '연계' }">checked="checked"</c:if>>연계
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">시스템명</td>
													<td colspan="3" class="tr-border">
														<input type="text" class="form-control white" name="aggrMagtSysNm" value="${list.aggrMagtSysNm }" maxlength="100" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="2" class="tr-border">공간<br/>정보</td>
													<td class="tr-border">타원체</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="spainfEllips" value="${list.spainfEllips }" maxlength="500" />
													</td>
													<td class="tr-border">좌표계</td>
													<td class="tr-border">
														<select class="select" name="spainfCntmCode">
															<c:forEach var="dta" items="${dta003 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.spainfCntmCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
														<input type="checkbox" id="cntmNoAns" onclick="selectDisabled();" <c:if test="${list.spainfCntmCode eq null || list.spainfCntmCode eq '' }">checked="checked"</c:if>>해당없음
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">투영법</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="spainfPrj" value="${list.spainfPrj }" maxlength="500" />
													</td>
													<td class="tr-border">객체 형태</td>
													<td class="tr-border">
														<input type="radio" name="spainfObjectfomCode" value="01" <c:if test="${list.spainfObjectfomCode eq '점' }">checked="checked"</c:if>>점
														<input type="radio" name="spainfObjectfomCode" value="02" <c:if test="${list.spainfObjectfomCode eq '면' }">checked="checked"</c:if>>면
														<input type="radio" name="spainfObjectfomCode" <c:if test="${list.spainfObjectfomCode eq null || list.spainfObjectfomCode eq '' }">checked="checked"</c:if>>해당없음
													</td>
												</tr>
												
												<tr class="tr-border">
													<td class="tr-border">구축</td>
													<td class="tr-border">지리적 범위</td>
													<td class="tr-border">
														<select class="select" name="constGeoScopeCode">
															<c:forEach var="dta" items="${dta009 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.constGeoScopeCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
													<td class="tr-border">시간적 범위</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="constTimeScope" value="${list.constTimeScope }" maxlength="500" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td rowspan="2" class="tr-border">공개</td>
													<td class="tr-border">개방시스템</td>
													<td class="tr-border" colspan="3">
														<input type="text" class="form-control white" name="othbcOpnSys" value="${list.othbcOpnSys }" maxlength="500" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="tr-border">배포 데이터<br/>좌표계</td>
													<td class="tr-border">
														<select class="select" name="othbcDistbDataCntmCode">
															<c:forEach var="dta" items="${dta003 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.othbcDistbDataCntmCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
														<input type="checkbox" id="othbcCntmNoAns" onclick="selectDisabled();" <c:if test="${list.othbcDistbDataCntmCode eq null || list.othbcDistbDataCntmCode eq '' }">checked="checked"</c:if>>해당없음
													</td>
													<td class="tr-border">배포 데이터 포맷</td>
													<td class="tr-border">
														<select class="select" name="othbcDistbDataFomCode">
															<c:forEach var="dta" items="${dta015 }">
																<option value="${dta.codeSn }" <c:if test="${dta.codeCn eq list.othbcDistbDataFomCode }">selected="selected"</c:if>>${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
												</tr>
												
												<tr class="tr-border">
													<td class="tr-border">유통</td>
													<td class="tr-border">가격 정책</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="distbPcPolicy" value="${list.distbPcPolicy }" maxlength="500" />
													</td>
													<td class="tr-border">판매 방법</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="distbSellMth" value="${list.distbSellMth }" maxlength="500" />
													</td>
												</tr>
												
												<tr class="tr-border">
													<td colspan="2" class="tr-border">데이터 설명</td>
													<td colspan="3" class="tr-border">
														<textarea class="form-control td-content white" style="height: 200px;" name="dataDcCn" maxlength="2000">${list.dataDcCn }</textarea>
													</td>
												</tr>
												<tr class="tr-border">
													<td colspan="2" class="tr-border">비고</td>
													<td colspan="3" class="tr-border">
														<input type="text" class="form-control td-content white" name="rm" value="${list.rm }" />
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
				<div style="padding-left: 990px;margin-bottom: 70px;">
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="getNationList();">목록</button>
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="updateNationData('${list.metdataId}');" >저장</button>
				</div>
			</form>
	</div>
	<!-- container end -->
</main>

<script src="<%=request.getContextPath() %>/resources/js/data/data.js"></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>