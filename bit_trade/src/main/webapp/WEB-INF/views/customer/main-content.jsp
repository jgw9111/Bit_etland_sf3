<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
	@Author : 정지우 [jgw911191@gmail.com]
	@Date : 2019. 3. 12. 오후 12:04:39
	@File Name : main-content.jsp
	@Desc :
 -->
 
 <!-- column content -->
  <div id="main-content">
    <div class="container">
      <div class="row">
        <div class="big-box">
          <div class="col-lg-12">
            <div class="col-md-4">
              <div class="box-bg">
                <div class="wow bounceInLeft animated animated" data-wow-duration="2s" data-wow-delay="0.9s" style="visibility: visible;-webkit-animation-duration: 2s; -moz-animation-duration: 2s; animation-duration: 2s;-webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
                  <div class="align-center">
                    <i class="fa fa-camera-retro fa-5x"></i>
                    <h4 class="text-bold">Customizable</h4>
                    <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="box-bg">
                <div class="wow bounceInLeft animated animated" data-wow-duration="2s" data-wow-delay="0.6s" style="visibility: visible;-webkit-animation-duration: 2s; -moz-animation-duration: 2s; animation-duration: 2s;-webkit-animation-delay: 0.6s; -moz-animation-delay: 0.6s; animation-delay: 0.6s;">
                  <div class="align-center">
                    <i class="fa fa-shield fa-5x"></i>
                    <h4 class="text-bold">Valid HTML5</h4>
                    <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="box-bg">
                <div class="wow bounceInLeft animated animated" data-wow-duration="2s" data-wow-delay="0.2s" style="visibility: visible;-webkit-animation-duration: 2s; -moz-animation-duration: 2s; animation-duration: 2s;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
                  <div class="align-center">
                    <i class="fa fa-bookmark-o fa-5x"></i>
                    <h4 class="text-bold">Responsive</h4>
                    <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="wow bounceInRight animated animated" style="visibility: visible;">
          <div class="col-lg-6">
            <h4>개인정보</h4>
			<jsp:include page="detail.jsp"/>
         <%--    <a href="#" class="thumbnail">
							<img src="${img}/thumbnails/outline-1.jpg" alt="">
						</a> --%>
          </div>
        </div>
        <div class="wow bounceInLeft animated animated" style="visibility: visible;">
          <div class="col-lg-6">
            <h4>Maecenas luctus</h4>
            <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.</p>
            <a href="#" class="thumbnail">
							<img src="${img}/thumbnails/ipad.jpg" alt="">
						</a>
          </div>
        </div>
      </div>
    </div>
  </div>