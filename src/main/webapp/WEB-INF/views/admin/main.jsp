<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value='/resources/js/admin/main.js'/>"></script>

<style>
#chartdiv {
  width: 100%;
  height: 500px;
  max-width: 100%;
}

</style>
<!-- container -->
<div class="ui container">

	<div class="two column stackable ui grid">
	  <div class="column">
	    <div class="ui segment">
			<a href="${pageContext.request.contextPath }/monitoringJob" class="btn hero-btn" style="background-color: #667480;">Monitor</a>	    	
	    </div>
	  </div>
	  <div class="column">
	    <div class="ui segment">
	      <p>Content</p>
	      <p></p>
	    </div>
	  </div>
	</div>
	
	<div class="ui segment">
	<div id="chartdiv"></div>
	</div>


</div><!-- //container -->
