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
                       <li class="">
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
                       <li class="active">
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
                                            <h5 class="m-b-10">건축데이터개방 등록</h5>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="/"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="/nationList">데이터 관리</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="/constList">건축데이터개방</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->

	<!-- container Start-->

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
													<col width="15%">
													<col width="35%">
													<col width="15%">
													<col width="35%">
												</colgroup>
												<tr class="tr-border">
													<td class="">데이터 구분</td>
													<td class="tr-border" colspan="3">
														<input type="text" class="form-control white" name="dataSe" maxlength="500" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="">데이터 명</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="dataNm" maxlength="100" />
													</td>
													<td class="">데이터 유형</td>
													<td class="tr-border">
														<input type="radio" class="radio" name="dataTyCode" value="01" checked="checked">속성
														<input type="radio" name="dataTyCode" value="02">공간
														<input type="radio" name="dataTyCode" value="03">미지정
													</td>
												</tr>
												<tr class="tr-border">
													<td class="">전체 갱신 주기</td>
													<td class="tr-border">
														<select class="select" name="allRnewCycleCode">
															<c:forEach var="dta" items="${dta007 }">
																<option value="${dta.codeSn }">${dta.codeCn }</option>
															</c:forEach>
														</select>
													</td>
													<td class="">최종 데이터 일자</td>
													<td class="tr-border">
														<input type="text" class="form-control white" name="lastDataDe" placeholder="YYYY-MM-DD" onfocus="this.placeholder=''" onblur="this.placeholder = 'YYYY-MM-DD'" maxlength="14" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class=" tr-border">변동데이터 여부</td>
													<td colspan="3" class="tr-border">
														<input type="text" class="form-control white" name="changeDataAt" value="" placeholder="(Y/N)" onfocus="this.placeholder=''" onblur="this.placeholder = '(Y/N)'" maxlength="1" />
													</td>
												</tr>
												<tr class="tr-border">
													<td class="">데이터 설명</td>
													<td class="tr-border" colspan="3">
														<textarea class="form-control td-content white" name="dataDcCn" style="height: 200px;" maxlength="2000"></textarea>
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
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="getConstList();">취소</button>
					<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="saveConst();">저장</button>
				</div>
			</form>
		</div>
	</div>
	<!-- container end -->
</main>

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/data/data.js" charset="utf-8"></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>