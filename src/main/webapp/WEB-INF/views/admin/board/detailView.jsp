<%@page import="com.jhit.admin.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<main>
	<!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="resources/bootstrap/img/hero/services_hero.jpg">
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

	<div class="container" style="margin-top: 100px; width: 100%;">
		<h3 class="title-dec">[상세조회]</h3>
		
		<div class="row block-9 justify-content-center mb-5">
			<form name="BoardVO" method="POST">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="idx" value="${list.idx }" />
			
				<table class="mb-md-5"
					style="width: 1200px; border: 1px solid #ced4da;">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tr class="form-group tr-border">
						<td class="form-align">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
						<td class="tr-border">
							<input type="text" class="form-control white" readonly="readonly" value="${list.title }" />
						</td>
						<td class="form-align">작&nbsp;&nbsp;성&nbsp;&nbsp;일&nbsp;&nbsp;시</td>
						<td class="tr-border">
							<input type="text" class="form-control white" readonly="readonly" value="${list.regDt }" />
						</td>
					</tr>
					<tr class="form-group tr-border">
						<td class="form-align">작&nbsp;&nbsp;&nbsp;성&nbsp;&nbsp;&nbsp;자</td>
						<td class="tr-border">
							<input type="text" class="form-control white" readonly="readonly" value="${list.userName }" />
						</td>
						<td class="form-align">수&nbsp;&nbsp;정&nbsp;&nbsp;일&nbsp;&nbsp;시</td>
						<td class="tr-border">
							<input type="text" class="form-control white" readonly="readonly" value='<c:if test="${list.modDt==null }">N/A</c:if><c:if test="${list.modDt!=null }">${list.modDt }</c:if>' />
						</td>
					</tr>
					<tr class="form-group tr-border">
						<td class="form-align">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</td>
						<td colspan="3" class="tr-border">
							<input type="text" class="form-control td-content white" readonly="readonly" value="${list.content }" />
						</td>
					</tr>
				</table>
				<button type="button" class="btn wid-mar" onclick="getList();">목록</button>
				<button type="button" class="btn wid-mar" onclick="updateView();" >수정</button>
				<button type="button" class="btn wid-mar" onclick="deleteView();" >삭제</button>
			</form>
		</div>

		<!-- <div style="margin-bottom: 50px;">
			<button type="button" onclick="insertData();" class="border-btn"
				style="float: right;">게시물 등록</button>
		</div> -->
	</div>
	<!-- container end -->
</main>

<script src="<%=request.getContextPath() %>/resources/js/board.js" charset='UTF-8'></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>