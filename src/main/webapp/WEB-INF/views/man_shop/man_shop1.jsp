<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="/WEB-INF/views/header_footer/header.jsp"%>


 

    <section id="three" class="no-padding">
  
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="col-lg-2 col-sm-2">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="http://gopeople.co.kr/web/product/medium/201702/1106_shop1_303582.jpg">
                        <img src="http://gopeople.co.kr/web/product/medium/201702/1106_shop1_303582.jpg" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
          

            </div>
        </div>
    </section>
   
        <div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        	<div class="modal-body">
        		<img src="" id="galleryImage" class="img-responsive" />좋은 옷입니당.
        		<p>
        		
        		    <br/>
        		    <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
        		</p>
        	</div>
        </div>
        </div>
    </div>


    
    <%@ include file="/WEB-INF/views/header_footer/footer.jsp"%>
</body>
</html>