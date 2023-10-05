<%@page import="com.jhit.admin.manage.vo.ManageVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                                            <h5 class="m-b-10">건축개방데이터</h5>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="/"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="/nationList">데이터 관리</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="/constList">건축개방데이터</a>
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
                            <!-- searchform start -->
                            <div class="p-15 p-b-0" style="margin-top: 30px; margin-left: 203px;">
	                            <!-- <label for="searchCondition" class="scondition_label"><b>검색조건</b></label> -->
                                <form class="form-material" name="searchForm">
									<select class="select" name="searchCondition" id="searchCondition" style="line-height: 49px;">
										<option value="dataNm" <c:if test="${vo.searchCondition eq 'dataNm' }">selected="selected"</c:if>>데이터 명</option>
										<option value="dataTyCode" <c:if test="${vo.searchCondition eq 'dataTyCode' }">selected="selected"</c:if>>데이터 유형</option>
									</select>
                                    <div class="form-group form-primary" style="margin-left: 120px; margin-top: -45px; width: 75%;">
                                        <input type="text" name="searchKeyword" id="searchKeyword" class="form-control" value="${vo.searchKeyword }">
                                        <%-- <input type="text" class="form-control" id="searchKeyword" name="searchKeyword" style="margin-left: 5px;" placeholder='검색어를 입력하세요.'	onfocus="this.placeholder = ''" onblur="this.placeholder = '검색어를 입력하세요.'" value="${vo.searchKeyword }"> --%>
                                        <span class="form-bar"></span>
                                        <label class="float-label"><i class="fa fa-search m-r-10"></i>검색어를 입력하세요.</label>
                                    </div>
                                </form>
                            </div>
                           <!-- searchform end -->
                            <form name="ManageVO" method="POST">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <!-- Hover table card start -->
                                        <div class="card">
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
										 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<input type="hidden" name="dataNm" id="dataNm" value="" />
														<div style="margin-bottom: 10px;">
															전체 <b>${totalCount }</b>건
														</div>
														
														<table class="table table-style-2 wishlist-table text-center">
															<thead class="table-head">
																<tr style="background: rgba(191, 191, 191, 0.2);">
																	<th style="font-size: 16px; width: 8%;"><b>번호</b></th>
																	<th style="font-size: 16px; width: 55%;"><b>데이터 명</b></th>
																	<th style="font-size: 16px; width: 12%;"><b>데이터 유형</b></th>
																	<th style="font-size: 16px; width: 25%;"><b>작성일시</b></th>
																</tr>
															</thead>
															<tbody>
															<!-- 리스트 출력 -->
															<c:if test="${totalCount != 0}">
																<c:forEach items="${lists }" var="dataList">
																	<tr class="table-tr">
																		<td> ${dataList.rn }</td>
																		<td onclick="constDetail('${dataList.dataNm}');" style="cursor: pointer;">${dataList.dataNm }</td>
																		<td>${dataList.dataTyCode }</td>
																		<%-- <td><fmt:parseDate pattern="yyyy-MM-dd" value="${dataList.regDt }"/></td> --%>
																		<td>${dataList.regDt }</td>
																	</tr>
																</c:forEach>
															</c:if>
															<c:if test="${totalCount == 0 }">
																<tr>
																	<td colspan="4">
																		<p>등록된 데이터가 없습니다.</p>
																	</td>
																</tr>
															</c:if>
															<!-- 리스트 출력 end -->
															</tbody>
														</table>
													</div>
												</div>
                                            </div>
                                        </div>
                                        <!-- 페이징 start -->
										<%@include file="/WEB-INF/views/admin/util/paging.jsp" %>
								  		<!-- 페이징 end -->
                                    </div>
									<!-- 게시물 등록 버튼 -->
									<div style="padding-left: 90%; margin-bottom: 70px;">
										<button type="button" onclick="insertConstData();" class="btn btn-inverse waves-effect waves-light">등록</button>
									</div>
								</form>
							</div>
						</div>
	<!-- container end -->
</main>

<script src="<%=request.getContextPath() %>/resources/js/data/data.js" charset="utf-8" ></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>