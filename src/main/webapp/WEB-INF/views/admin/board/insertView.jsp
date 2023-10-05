<%@page import="com.jhit.admin.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%-- <%@ taglib prefix="fmt" uri=" http://java.sun.com/jsp/jstl/fmt "%> --%>

<%@include file="/WEB-INF/views/admin/member/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
		<h3 class="title-dec">[등록]</h3>
		
		<div class="row block-9 justify-content-center mb-5">
			<form name="BoardVO" method="POST" class="p-5 contact-form">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="userid" value="${id }">
			
				<table class="mb-md-5"
					style="width: 1200px; border: 1px solid #ced4da;">
					<colgroup>
						<col width="10%">
						<col width="35%">
						<col width="20%">
						<col width="35%">
					</colgroup>
					<tr class="form-group tr-border">
						<td class="form-align">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
						<td class="tr-border">
							<input type="text" class="form-control white" name="title" placeholder="제목을 입력하세요." />
						</td>
					</tr>
					<tr class="form-group tr-border">
						<td class="form-align">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</td>
						<td colspan="3" class="tr-border">
							<textarea class="form-control td-content white" name="content" placeholder="내용을 입력하세요." style="height: 300px;"></textarea>
						</td>
					</tr>
				</table>
				<button type="button" class="btn wid-mar" onclick="getList();">취소</button>
				<button type="button" class="btn wid-mar" onclick="save();">저장</button>
			</form>
		</div>

		<!-- <div style="margin-bottom: 50px;">
			<button type="button" onclick="insertData();" class="border-btn"
				style="float: right;">게시물 등록</button>
		</div> -->
	</div>
	<!-- container end -->
</main>

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/board.js" charset="utf-8"></script>
<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>