<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
  <head>
   <%@ include file="/WEB-INF/views/header_footer/header.jsp"%>

    <header id="first">
        <div class="header-content">
            <div class="inner">
                <h1 class="cursive">X_ShoppingMall</h1>
                <br><br>
                
	<div class="container" id="theAccordion">
		<!-- 하나의 행이 기준 -->
		<div class="row">
			<div class="col-md-10">
				<div class="carousel slide" id="theCarousel">
					<div class="carousel-inner">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#theCarousel" data-slide-to="0"
								class="active"></li>
							<li data-target="#theCarousel" data-slide-to="1"></li>
							<li data-target="#theCarousel" data-slide-to="2"></li>
						</ol>
						
						<div class="item active">
							<img src="http://mustit.co.kr/lib/upload/banner/f84aa00ad57cae18274db2aa1e62f1c8.jpg">
							
						</div>
						<div class="item">
							<img src="http://mustit.co.kr/lib/upload/banner/9a5983ffaded538fe2eb5a9a5e826db9.jpg">
						</div>
						<div class="item">
							<img src="http://mustit.co.kr/lib/upload/banner/22612ec095944a025db998ffd8e3a812.jpg">
						</div>

					</div>
					<a href="#theCarousel" class="carousel-control left"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
					<a href="#theCarousel" class="carousel-control right"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
						
				</div>
			</div>
		</div>
	</div>
                <hr>
                <a href="#video-background" id="toggleVideo" data-toggle="collapse" class="btn btn-primary btn-xl">Toggle Video</a> &nbsp; <a href="#one" class="btn btn-primary btn-xl page-scroll">Get Started</a>
            </div>
        </div>
        
        <video autoplay="" loop="" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="https://s3-us-west-2.amazonaws.com/coverr/poster/Traffic-blurred2.jpg" id="video-background">
            <!-- <source src="https://s3-us-west-2.amazonaws.com/coverr/mp4/Traffic-blurred2.mp4" type="video/mp4">Your browser does not support the video tag. I suggest you upgrade your browser. -->
            <source src="" type="video/mp4">
        </video>
    </header>
    <section class="bg-primary" id="one">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
                    <h2 class="margin-top-0 text-primary">Built On The Bootstrap Grid</h2>
                    <br>
                    <p class="text-faded">
                        Bootstrap's responsive grid comes in 4 sizes or "breakpoints": tiny (xs), small(sm), medium(md) and large(lg). These 4 grid sizes enable you create responsive layouts that behave accordingly on different devices.
                    </p>
                    <a href="#three" class="btn btn-default btn-xl page-scroll">Learn More</a>
                </div>
            </div>
        </div>
    </section>
    <section id="two">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary">Flexible Layouts</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 text-center">
                    <div class="feature">
                        <i class="icon-lg ion-android-laptop wow fadeIn" data-wow-delay=".3s"></i>
                        <h3>Responsive</h3>
                        <p class="text-muted">Your site looks good everywhere</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 text-center">
                    <div class="feature">
                        <i class="icon-lg ion-social-sass wow fadeInUp" data-wow-delay=".2s"></i>
                        <h3>Customizable</h3>
                        <p class="text-muted">Easy to theme and customize with SASS</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 text-center">
                    <div class="feature">
                        <i class="icon-lg ion-ios-star-outline wow fadeIn" data-wow-delay=".3s"></i>
                        <h3>Consistent</h3>
                        <p class="text-muted">A mature, well-tested, stable codebase</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
 
    <section class="container-fluid" id="four">
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <h2 class="text-center text-primary">Features</h2>
                <hr>
                <div class="media wow fadeInRight">
                    <h3>Simple</h3>
                    <div class="media-body media-middle">
                        <p>What could be easier? Get started fast with this landing page starter theme.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-bolt-outline"></i>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeIn">
                    <h3>Free</h3>
                    <div class="media-left">
                        <a href="#alertModal" data-toggle="modal" data-target="#alertModal"><i class="icon-lg ion-ios-cloud-download-outline"></i></a>
                    </div>
                    <div class="media-body media-middle">
                        <p>Yes, please. Grab it for yourself, and make something awesome with this.</p>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeInRight">
                    <h3>Unique</h3>
                    <div class="media-body media-middle">
                        <p>Because you don't want your Bootstrap site, to look like a Bootstrap site.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-snowy"></i>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeIn">
                    <h3>Popular</h3>
                    <div class="media-left">
                        <i class="icon-lg ion-ios-heart-outline"></i>
                    </div>
                    <div class="media-body media-middle">
                        <p>There's good reason why Bootstrap is the most used frontend framework in the world.</p>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeInRight">
                    <h3>Tested</h3>
                    <div class="media-body media-middle">
                        <p>Bootstrap is matured and well-tested. It's a stable codebase that provides consistency.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-flask-outline"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2 class="text-primary">Get Started</h2>
                <a href="http://www.bootstrapzero.com/bootstrap-template/landing-zero" target="ext" class="btn btn-default btn-lg wow flipInX">Free Download</a>
            </div>
            <br>
            <hr/>
            <br>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <h6 class="wide-space text-center">BOOTSTRAP IS BASED ON THESE STANDARDS</h6>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <i class="icon-lg ion-social-html5-outline" title="html 5"></i>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <i class="icon-lg ion-social-sass" title="sass"></i>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <i class="icon-lg ion-social-javascript-outline" title="javascript"></i>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <i class="icon-lg ion-social-css3-outline" title="css 3"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </aside>
    <section id="last">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="margin-top-0 wow fadeIn">Get in Touch</h2>
                    <hr class="primary">
                    <p>We love feedback. Fill out the form below and we'll get back to you as soon as possible.</p>
                </div>
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <form class="contact-form row">
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="Name">
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="Email">
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="Phone">
                        </div>
                        <div class="col-md-12">
                            <label></label>
                            <textarea class="form-control" rows="9" placeholder="Your message here.."></textarea>
                        </div>
                        <div class="col-md-4 col-md-offset-4">
                            <label></label>
                            <button type="button" data-toggle="modal" data-target="#alertModal" class="btn btn-primary btn-block btn-lg">Send <i class="ion-android-arrow-forward"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
   

     
  
    
    
    
    <div id="alertModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
        <div class="modal-content">
        	<div class="modal-body">
        		<h2 class="text-center">Nice Job!</h2>
        		<p class="text-center">You clicked the button, but it doesn't actually go anywhere because this is only a demo.</p>
        		<p class="text-center"><a href="http://www.bootstrapzero.com">Learn more at BootstrapZero</a></p>
        		<br/>
        		<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">OK <i class="ion-android-close"></i></button>
        	</div>
        </div>
        </div>
    </div>
    
    
     <%@ include file="/WEB-INF/views/header_footer/footer.jsp"%>
  </body>
</html>