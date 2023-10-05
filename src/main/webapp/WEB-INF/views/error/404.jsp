<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오류</title>
<style>
body{
	margin:0;
	padding:0;
	font-family: 'Tomorrow', sans-serif;
	height:100vh;
	background-image: linear-gradient(to top, #2e1753, #1f1746, #131537, #0d1028, #050819);
	display:flex;
	justify-content:center;
	align-items:center;
	overflow:hidden;
}
a:link { color: red; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
a:hover { color: blue; text-decoration: underline;}
.text{
	position:absolute;
	top:10%;
	color:#fff;
	text-align:center;
}
h1{
	font-size:50px;
}
.star{
	position:absolute;
	width:2px;
	height:2px;
	background:#fff;
	right:0;
	animation:starTwinkle 3s infinite linear;
}
.astronaut img{
	width:100px;
	position:absolute;
	top:55%;
	animation:astronautFly 6s infinite linear;
}
.link_404{      
	color: #fff!important;
	padding: 10px 20px;
	background: #39ac31;
	margin: 20px 0;
	display: inline-block;}
	.contant_box_404{ margin-top:-50px;
}
@keyframes astronautFly{
  0%{
    left:-100px;
  }
  25%{
    top:50%;
    transform:rotate(30deg);
  }
  50%{
    transform:rotate(45deg);
    top:55%;
  }
  75%{
    top:60%;
    transform:rotate(30deg);
  }
  100%{
    left:110%;
    transform:rotate(45deg);
  }
}
@keyframes starTwinkle{
  0%{
     background:rgba(255,255,255,0.4);
  }
  25%{
    background:rgba(255,255,255,0.8);
  }
  50%{
   background:rgba(255,255,255,1);
  }
  75%{
    background:rgba(255,255,255,0.8);
  }
  100%{
    background:rgba(255,255,255,0.4);
  }
}
</style>
<script>
document.addEventListener("DOMContentLoaded",function(){
	
	var body=document.body;
	setInterval(createStar,100);
	
	function createStar(){
	
		var right=Math.random()*500;
		var top=Math.random()*screen.height;
		var star=document.createElement("div");
		star.classList.add("star")
		body.appendChild(star);
		
		setInterval(runStar,10);
		star.style.top=top+"px";
		
		function runStar(){
		
			if(right>=screen.width){
				star.remove();
			}
			
			right+=3;
			star.style.right=right+"px";
		}
	} 
})
</script>
</head>
<body>
	<div class="text">
		<div>ERROR</div>
		<h1>404</h1>
		<hr>
		<div>Page Not Found</div>
		<a href="/" class="link_404">메인 화면으로 이동</a>
	</div>
	
	<div class="astronaut">
		<img src='<c:url value="/resources/img/error/astronaut.png"/>' alt="우주비행사" class="src">
	</div>
</body>
</html>