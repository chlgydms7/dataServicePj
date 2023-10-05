<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%-- <%@ taglib prefix="fmt" uri=" http://java.sun.com/jsp/jstl/fmt "%> --%>

<%@include file="/WEB-INF/views/admin/member/login_header.jsp"%>
<style>
.login_logo {
width: 325px;
filter: drop-shadow(4px 3px 6px #8c8c8c);
}
</style>

<main>
  <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->

                        <form class="md-float-material form-material" action="/login" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <div class="text-center">
                                <img src="<%=request.getContextPath() %>/resources/img/main/jh_logo_white.png" alt="로고이미지" class="login_logo">
                            </div>
                            <div class="auth-box card">
                                <div class="card-block">
                                    <div class="row m-b-20">
                                        <div class="col-md-12">
                                            <h3 class="text-center">로그인</h3>
                                        </div>
                                    </div>
                                    <div class="form-group form-primary">
                                        <input type="text" name="username" class="form-control">
                                        <span class="form-bar"></span>
                                        <label class="float-label">아이디</label>
                                    </div>
                                    <div class="form-group form-primary">
                                        <input type="password" name="password" class="form-control">
                                        <span class="form-bar"></span>
                                        <label class="float-label">비밀번호</label>
                                    </div>
                                    <div class="row m-t-25 text-left">
                                    </div>
                                    <div class="row m-t-30">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20">로그인</button>
                                        </div>
                                    </div>
                                    <hr/>
                                </div>
                            </div>
                        </form>
                        <!-- end of form -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
<!-- Required Jquery -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery/jquery.min.js "></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/common-pages.js"></script>
</body>

	<!-- container Start-->
	<%-- <div class="main-content-wrapper">
		<div class="page-content-inner pt--75 pb--80">
			<div class="container">
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<div class="login-box" style="margin-top: 100px;">
							<!-- <h3 style="text-align: center; margin: 50px 80px; background: #fbf9ff;">로그인</h3> -->
							<form class="form form--login" action="/login" method="post">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<div class="form-group">
									<div class="input-group mb-3">
										<div class="form__group mb--20" style="margin: 5px; margin-left: 30px;">
											<label class="form__label" for="username_email" style="margin-right: 20px;"><b>아이디</b></label>
											<input type="text" class="form__input" name="username" style="size: 50px" placeholder="ID" onfocus="this.placeholder=''" onblur="this.placeholder = 'ID'">
										</div>
										<div class="form__group mb--20" style="margin-left: 25px;">
											<label class="form__label" for="login_password" style="margin-right: 9px;"><b>비밀번호</b></label>
											<input type="password" class="form__input" id="login_password" name="password" placeholder="Password" onfocus="this.placeholder=''" onblur="this.placeholder = 'Password'">
										</div>
										<div class="d-flex align-items-center mb--20">
											<input type="submit" value="로그인" class="btn" style="margin: 30px 10px 82px 112px; min-width: 133px;">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
</main>


<%@include file="/WEB-INF/views/admin/member/footer.jsp"%>