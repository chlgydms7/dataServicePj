<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!-- Required Jquery -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="<%=request.getContextPath() %>/resources/bootstrap/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="<%=request.getContextPath() %>/resources/bootstrap/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="<%=request.getContextPath() %>/resources/bootstrap/js/pcoded.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/bootstrap/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap/js/script.js "></script>
    <!-- datepicker -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/datepicker/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/datepicker/js/jquery-ui.min.js"></script>
	
</body>

</html>
<%-- <style>
a:hover{
	color: #2e8dc9
}
</style>
   <footer>
       <!-- Footer Start-->
       <div class="footer-area footer-padding" style="background: #fbfbfb; padding-top: 26px; padding-bottom: 0px;">
           <div class="container">
               <div class="row d-flex justify-content-between">
                   <div class="">
                      <div class="single-footer-caption">
                        <div class="single-footer-caption">
                             <!-- logo -->
                            <div class="footer-logo">
                                <!-- <a href="index.html"><img src="resources/bootstrap/img/logo/logo2_footer.png" alt=""></a> -->
                                <img src="resources/img/main/logo.png" style="width: 70px; height: 70px; margin-right: 5px;">
                            </div>
                            <!-- <div class="footer-tittle">
                                <div class="footer-pera">
                                    <p>데이터의 관리 및 현황 모니터링이 가능합니다.</p>
                               </div>
                            </div> -->
                            <!-- social -->
                            <!-- <div class="footer-social">
                                <a href="http://jhit.co.kr/main.html"><img src="resources/img/main/top_logo.png" style="width: 148px; height: 35px;"></a>
                                <a href="#"><i class="fab fa-twitter-square"></i></a>
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-pinterest-square"></i></a>
                            </div> -->
                        </div>
                      </div>
                   </div>
                   <div class="">
                       <div class="single-footer-caption">
                           <div class="footer-tittle">
                               <h4 style="padding-top: 20px;"><a href="/nationList">Data Management</a></h4>
                               <!-- <ul>
                                   <li><a href="/nationList">국가중점데이터</a></li>
                                   <li><a href="/openList">오픈마켓</a></li>
                                   <li><a href="/constList">건축데이터개방</a></li>
                               </ul> -->
                           </div>
                       </div>
                   </div>
                   <div class="">
                       <div class="single-footer-caption">
                           <div class="footer-tittle">
                               <h4 style="padding-right: 500px;padding-top: 20px;"><a href="/monitoringJob">Monitoring</a></h4>
                               <!-- <ul>
                                   <li><a href="/monitoringJob">크롤링 및 적재</a></li>
                                   <li><a href="#">데이터 추출</a></li>
                               </ul> -->
                           </div>
                       </div>
                   </div>
                   <!-- <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                       <div class="single-footer-caption mb-50">
                           <div class="footer-tittle">
                               <h4>Monitoring</h4>
                               <ul>
                                   <li><a href="#">크롤링</a></li>
                                   <li><a href="#">적재</a></li>
                                   <li><a href="#">추출</a></li>
                               </ul>
                           </div>
                       </div>
                   </div> -->
                   <!-- <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                       <div class="single-footer-caption mb-50">
                           <div class="footer-tittle">
                               <h4>Get in Touch</h4>
                               <ul>
                                <li><a href="#">031-687-3701</a></li>
                                <li><a href="#"> Demomail@gmail.com</a></li>
                                <li><a href="#">경기도 안양시 동안구 벌말로 126, 2205호(관양동, 평촌 오비즈타워)</a></li>
                            </ul>
                           </div>
                       </div>
                   </div> -->
                   <!-- <div style="padding: 0px 0px 0px 50px;">
                   		<ul>
                   			<li>경기도 안양시 동안구 벌말로 126, 2205호(관양동, 평촌 오비즈타워)</li>
                   		</ul>
                   </div> -->
               </div>
           </div>
       </div>
       <!-- footer-bottom aera -->
       <div class="footer-bottom-area footer-bg" style="background: #fbfbfb;">
           <div class="container">
               <div class="footer-border" style="padding: 6px 0px 4px;">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p  style="font-size: 11px !important;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                경기도 안양시 동안구 벌말로 126, 2205호(관양동, 평촌 오비즈타워)<br/>
  			&copy;<!-- <script>document.write(new Date().getFullYear());</script> -->2018 JHIT, All rights reserved | This template is made with </i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> | 관리자 시스템
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                    </div>
               </div>
           </div>
       </div>
       <!-- Footer End-->
   </footer>
    </body>
</html> --%>