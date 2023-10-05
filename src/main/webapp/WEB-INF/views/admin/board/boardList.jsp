<%@page import="com.jhit.admin.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="fmt" uri=" http://java.sun.com/jsp/jstl/fmt "%>
 --%>
<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<main>
    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="resources/bootstrap/img/hero/services_hero.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>게시판</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

	<!-- container Start-->
	 <form name="BoardVO" method="POST">
	 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="container"	style="margin-top: 100px; width: 100%; height: 1000px">
		
		<input type="hidden" name="idx" id="idx" value="" />
		
			<div class="blog_right_sidebar">
				<div class="single_sidebar_widget search_widget" style="width: 1200px; background:none; margin-top: -243px;">
						<div class="form-group">
							<div class="input-group mb-3">
								<!-- <label for="searchCondition" class="scondition_label"><b>검색조건</b></label> -->
								<select name="searchCondition" id="searchCondition" style="line-height: 49px; height: 51px !important; margin-right: 5px;">
									<option value="title" <c:if test="${searchCondition eq 'title' }">selected="selected"</c:if>>제목</option>
									<option value="content" <c:if test="${searchCondition eq 'content' }">selected="selected"</c:if>>내용</option>
									<option value="userName" <c:if test="${searchCondition eq 'userName' }">selected="selected"</c:if>>작성자</option>
								</select>
								<input type="text" class="form-control" id="searchKeyword" name="searchKeyword" placeholder='검색어를 입력하세요.'	onfocus="this.placeholder = ''" onblur="this.placeholder = '검색어를 입력하세요.'">
								<div class="input-group-append">
									<button type="button" id="searchBtn" onclick="search();">
										<i class="ti-search"></i>
									</button>
								</div>
							</div>
						</div>
						<!-- <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">Search</button> -->
				</div>
				<div class="single_sidebar_widget post_category_widget" style="width: 1200px; background: none;">
					<div><p>전체 <b>${totalCount }</b>건</p></div>
					
					<table class="table table-style-2 wishlist-table text-center">
						<thead class="table-head">
							<tr style="background: rgba(191, 191, 191, 0.2);">
								<th style="font-size: 16px; width: 8%;"><b>번호</b></th>
								<th style="font-size: 16px; width: 65%;"><b>제목</b></th>
								<th style="font-size: 16px; width: 12%;"><b>작성자</b></th>
								<th style="font-size: 16px; width: 15%;"><b>작성일</b></th>
							</tr>
						</thead>
						<tbody>
						<!-- 리스트 출력 -->
						<c:if test="${totalCount != 0}">
							<c:forEach items="${lists }" var="boardList">
								<tr class="table-tr">
									<td> ${boardList.idx }</td>
									<td onclick="selectDetail(${boardList.idx});" style="cursor: pointer;">${boardList.title }</td>
									<td><b>${boardList.userName }</b></td>
									<%-- <td><fmt:formatDate value="${boardList.regDt }"/></td> --%>
									<td>${boardList.regDt }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${totalCount == 0 }">
							<tr>
								<td colspan="4">
									<p>등록된 게시물이 없습니다.</p>
								</td>
							</tr>
						</c:if>
						<!-- 리스트 출력 end -->
						</tbody>
					</table>
				</div>
				
				<!-- 페이징 start -->
				<%@include file="/WEB-INF/views/admin/util/paging.jsp" %>
			   <!-- 페이징 end -->
				
			</div>
			
			<!-- 게시물 등록 버튼 -->
			<div style="margin-bottom: 50px;">
				<button type="button" onclick="insertData();" class="border-btn" style="float: right;">게시물 등록</button>
			</div>
			
		</div>
	</form>
	<!-- container end -->
</main>

<script src="<%=request.getContextPath() %>/resources/js/board.js" charset="utf-8" ></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>