<%@page import="com.jhit.admin.manage.vo.ManageVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
    	.table td, .table th{
    		vertical-align: none !important;
    	}
    </style>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>데이터-관리자 시스템</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/bootstrap/img/favicon.ico">

		<!-- CSS here -->
            <link rel="icon" href="<%=request.getContextPath() %>/resources/bootstrap/images/favicon.ico" type="image/x-icon">
		    <!-- Google font-->
		    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
		    <!-- waves.css -->
		    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/pages/waves/css/waves.min.css" type="text/css" media="all">
		    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/styles.css" type="text/css" media="all">
		    <!-- Required Fremwork -->
		    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap/css/bootstrap.min.css">
		    <!-- waves.css -->
		    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/pages/waves/css/waves.min.css" type="text/css" media="all">
		    <!-- themify icon -->
		    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/icon/themify-icons/themify-icons.css">
		    <!-- font-awesome-n -->
		    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/font-awesome-n.min.css">
		    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/font-awesome.min.css">
		    <!-- scrollbar.css -->
		    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/jquery.mCustomScrollbar.css">
		    <!-- Style.css -->
		    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap/css/style.css">
		    <!-- datepicker -->
		    <link type="text/css"  rel="stylesheet" href="<%=request.getContextPath() %>/resources/datepicker/css/jquery-ui.css">
   </head>
   <body>
<main>
	<div class="page-header">
             <div class="page-block">
                 <div class="row align-items-center">
                     <div class="col-md-8">
                         <div class="page-header-title">
                             <h5 class="m-b-10">데이터 등록</h5>
                         </div>
                     </div>
                 </div>
             </div>
       	</div>
	<!-- container Start-->

	<div class="container" style="margin-top: 30px; width: 100%;">
		
			<form name="ManageVO" method="POST" class="contact-form">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="registerId" value="${id }">
			
				<table class="table" style="width: 500px; border: 1px solid #ced4da;">
					<colgroup>
						<col width="15%">
						<col width="35%">
					</colgroup>
					
					<tr class="tr-border">
						<td class="tr-border">조직ID</td>
						<td class="tr-border">
							<input type="text" class="form-control white" name="dataId" value="" maxlength="25" />
						</td>
					</tr>
					<tr class="tr-border">
						<td class="tr-border">조직명</td>
						<td class="tr-border">
							<input type="text" class="form-control white" name="dataNm" value="" maxlength="100"/>
						</td>
					</tr>
					
				</table>
				<button type="button" class="btn btn-inverse waves-effect waves-light" onclick="saveOrganData();" style="margin: 30px 228px;">저장</button>
			</form>
	</div>
	<!-- container end -->
</main>

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/data/data.js" charset="utf-8"></script>

    </body>
</html>
