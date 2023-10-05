<%@page import="java.util.Date"%>
<%@page import="com.jhit.admin.monitor.vo.MonitoringVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<style type="text/css">
.impossibleDl{height: 34px;background-color: #37474f; color: #ffffff; border-color: #37474f;cursor: pointer;width: 107px;font-size: 14px;text-align: center;}
</style>
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
               <li class="pcoded-hasmenu active pcoded-trigger">
	                <a href="javascript:void(0)" class="waves-effect waves-dark">
	                    <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
	                    <span class="pcoded-mtext">모니터링</span>
	                    <span class="pcoded-mcaret"></span>
	                </a>
	                <ul class="pcoded-submenu">
	                    <li class="">
	                        <a href="/loaderMonitoring" class="waves-effect waves-dark">
	                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
	                            <span class="pcoded-mtext">데이터 적재</span>
	                            <span class="pcoded-mcaret"></span>
	                        </a>
	                    </li>
	                    <li class="active">
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
                         <h5 class="m-b-10">데이터 추출</h5>
                     </div>
                 </div>
                 <div class="col-md-4">
                     <ul class="breadcrumb">
                         <li class="breadcrumb-item">
                             <a href="/"> <i class="fa fa-home"></i> </a>
                         </li>
                         <li class="breadcrumb-item"><a href="/loaderMonitoring">모니터링</a>
                         </li>
                         <li class="breadcrumb-item"><a href="/extractMonitoring">데이터 추출</a>
                         </li>
                     </ul>
                 </div>
             </div>
         </div>
     </div>
     <!-- Page-header end -->
					<div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                            <!-- searchform start -->
                            <div class="p-15 p-b-0" style="width: 1311px; margin-top: 60px; margin-left: -117px; margin-bottom: 50px;">
                                <form class="form-material" name="searchForm">
                                        <input type="hidden" name="searchDate" id="searchDate" >
                                    <div class="form-group form-primary" style="margin-left: 355px; margin-top: -45px; width:90%">
                                        <input type="text" name="searchKeyword" id="searchKeyword" class="form-control fill" value="${searchKeyword }">
                                        <%-- <input type="text" class="form-control" id="searchKeyword" name="searchKeyword" style="margin-left: 5px;" placeholder='검색어를 입력하세요.'	onfocus="this.placeholder = ''" onblur="this.placeholder = '검색어를 입력하세요.'" value="${vo.searchKeyword }"> --%>
                                        <span class="form-bar"></span>
                                        <label class="float-label"><i class="fa fa-search m-r-10"></i>데이터명을 입력하세요.</label>
                                    </div>
                                </form>
                            </div>
                           <!-- searchform end -->
									<!-- container Start-->
									 <form name="MonitoringVO" method="POST">
									 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<input type="hidden" name="jobName" id="jobName" value="" />
										<input type="hidden" name="jobExecutionId" id="jobExecutionId" value="" />
										<input type="hidden" name="jobInstanceId" id="jobInstanceId" value="" />
										<input type="hidden" name="stepExecutionId" id="stepExecutionId" value="" />
										<input type="hidden" name="extrcLogNo" id="extrcLogNo" value="" />
										
										<div class="container">
											<div class="row justify-content-between align-items-center mb-5">
												<div class="col flex-shrink-0 mb-3 mb-md-0">
													<h1 class="display-5 mt-3">데이터 추출 현황</h1>
													<div class="text-muted text-right">
														시작일시 : <c:if test="${extractStartTime eq null }">진행사항이 없습니다.</c:if><c:if test="${extractStartTime ne null }">${extractStartTime }</c:if> 
														~ 종료일시 : <c:if test="${extractEndTime eq null && extractStartTime eq null}">진행사항이 없습니다.</c:if><c:if test="${extractEndTime ne null}">${extractEndTime }</c:if>
														<c:if test="${extractEndTime eq null && extractStartTime ne null }">진행 중 입니다.</c:if>		
													</div>
												</div>
											</div>
										<div class="row gx-5">
											<div class="col-xxl-3 col-md-6 mb-2">
					                            <div class="card card-raised border-start border-primary border-4">
					                                <div class="card-body px-4">
					                                    <div class="d-flex justify-content-between align-items-center mb-2">
					                                        <div class="me-2">
					                                        	<h3>${successCount}건</h3>
					                                            <%-- <div class="display-5">${successCount}건</div> --%>
					                                        </div>
					                                        <div style="width: 45px; height: 45px;" class="rounded-circle bg-primary">
					                                        	<div class="d-flex align-items-center justify-content-center h-100 text-white">성공</div>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                        <div class="col-xxl-3 col-md-6 mb-2">
					                            <div class="card card-raised border-start border-danger border-4">
					                                <div class="card-body px-4">
					                                    <div class="d-flex justify-content-between align-items-center mb-2">
					                                        <div class="me-2">
					                                        	<h3>${failCount}건</h3>
					                                            <%-- <div class="display-5">${failCount}건</div> --%>
					                                        </div>                                        
					                                        <div style="width: 45px; height: 45px;" class="rounded-circle bg-danger">
					                                        	<div class="d-flex align-items-center justify-content-center h-100 text-white">실패</div>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
											<div class="row">
								            	<div class="col">
								            		<div class="d-flex align-items-center h-100" style="float: right;">
							            				<input type="text" class="form-control" id="date" name="date" style="width:100px; margin-right: 5px; display: inline-block;" readonly="readonly" value="${date}">
														<button type="button" onclick="getExtractList();" class="btn btn-primary btn-sm" style="margin-left: 5px;">검색</button>
													</div>
								            	</div>		            	
								            </div>
								            <div class="row mt-2">
												<div class="col">
													<table class="table">
														<thead class="table-active">
															<tr id="extractList">
																<th scope="col"><p class="text-center h6">번호</p></th>
																<th scope="col"><p class="text-center h6">데이터 명</p></th>
																<th scope="col"><p class="text-center h6">시작일시</p></th>
																<th scope="col"><p class="text-center h6">종료일시</p></th>
																<th scope="col"><p class="text-center h6">상태</p></th>
																<th scope="col"></th>
															</tr>
														</thead>
														<tbody>
																<c:if test="${extractDetail ne null }">
																	<c:forEach items="${extractDetail }" var="detail" varStatus="status">
																		<tr id="extractList${status.count }" data-toggle="tooltip" data-placement="bottom" title="${detail.extrcErrorCn }">
																			<td>${detail.rn }</td>
																			<th scope="row"><p class="text-center h6">${detail.exrtcKorNm } (<c:out value="${detail.legaldongNm }" />)</p></th>
																			<td><p class="text-center h6">${detail.startTime }</p></td>
																			<td>
																				<p class="text-center h6">
																					<c:if test="${detail.endTime eq null && detail.startTime eq null }">진행사항이 없습니다.</c:if><c:if test="${detail.endTime ne null }">${detail.endTime }</c:if>
																					<c:if test="${detail.endTime eq null && detail.startTime ne null }">진행 중 입니다.</c:if>
																				</p>
																			</td>
																			<td>
																				<c:choose>
																					<c:when test="${detail.status eq '실패' }">
																						<p class="text-center text-danger h6">${detail.status}</p>
																					</c:when>
																					<c:when test="${detail.status eq '성공' }">
																						<p class="text-center text-primary h6">${detail.status}</p>
																					</c:when>
																					<c:otherwise>
																						<p class="text-center h6">${detail.status}</p>
																					</c:otherwise>
																				</c:choose>
																			<%-- <p class="text-center text-primary h6">${detail.status }</p> --%>
																			</td>
																			<td>
																				<p class="text-center h6">
																					<c:if test="${detail.status eq '성공' && detail.useAt eq 'Y' }"><button type="button" onclick="extractDownload(${detail.extrcLogNo });" class="btn-inverse waves-effect waves-light" style="height: 34px;">다운로드</button></c:if>
																					<c:if test="${detail.useAt eq 'N'  }"><input type="text" class="impossibleDl" value="기한만료" /></c:if>
																				</p>
																			</td>
																		</tr>
																	</c:forEach>
																</c:if>
																<c:if test="${extractDetail eq null }">
																	<tr id="noExtractList" style="text-align: center">
																		<td colspan="5">진행사항이 없습니다.</td>
																	</tr>
																</c:if>
															<!-- 데이터 추출 end -->
														<!-- 리스트 출력 end -->
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
<!-- modal start -->
<div class="modal">
	<div class="modal_content">
	    <!-- 모달 스텝명 header start -->
	 	<div class="modal_header">
	 	</div>
	 	<!-- 모달 스텝명 header end -->
	 	
	 	<form name="modalForm">
	 	<!-- <input type="hidden" name="stepExecutionId" id="stepExecutionId" value="" /> -->
	 	
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

<script src="<%=request.getContextPath() %>/resources/js/monitor/monitor.js" charset="utf-8" ></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/datepicker/js/jquery-1.12.4.js"></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>