<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="/WEB-INF/views/header_footer/header.jsp"%>


  <section id="first">
   <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2 class="text-primary">셔츠</h2>
                <!-- a href="http://www.bootstrapzero.com/bootstrap-template/landing-zero" target="ext" class="btn btn-default btn-lg wow flipInX">당신의 집사</a> -->
            </div>
            <br>
            <hr/>
            <br>
            <form action="item_purchase" method ="post">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
			           <div class="row" >
			
							<div class="container-fluid">
								<div class="row no-gutter">
									<div class="col-lg-4 col-sm-4">
										<a href="#galleryModal" class="gallery-box" data-toggle="modal"
											data-src="http://gopeople.co.kr/web/product/medium/201702/1106_shop1_303582.jpg">
											<img src="http://gopeople.co.kr/web/product/medium/201702/1106_shop1_303582.jpg"
											class="img-responsive" alt="Image 1">
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
						</div>
                </div>
                <br><br><br><br><br><br><br><br>
								<table class="table table-hover" >
							<colgroup>
								<col style="width: 30px;">
								<col style="width: 100px;">
								<col style="width: 30px;">
							</colgroup>
							<thead>
								<tr align="center">
									<th style="text-align : center;"><h1>분류</h1></th>
									<th style="text-align : center;"><h1>상품명</h1></th>
									<th style="text-align : center;"><h1>금액</h1></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="vertical-align : middle;"   class="sub_tit" rowspan="12" ><h2> 남방 </h2></td>
									<td><h3> 체크 남방</h3> </td>
									<td style="text-align: center;"><h3>24000 원</h3><span
										></span></td>
								</tr>
								
                                      <!-- On rows -->
					</tbody>
						</table>
						 <div class="col-lg-5 col-lg-offset-2">
								<input type="text" name="count" value="" class="form-control" placeholder="수량을 입력해주세요.">
								<br>
							
						</div>
						<input type ="hidden" name="item_kind" value="남방"/>
						<input type ="hidden" name="item_name" value="체크 남방"/>
						<input type ="hidden" name="item_sum" value="24000"/>
						<input type ="hidden" name="USER_NAME" value="${USER_NAME}"/>
						 
						<div class="col-lg-5 col-lg-offset-3">
								
								<button type="submit" class="btn btn-default"> 결제 </button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="reset" class="btn btn-default"> Cancel </button>
								
						</div>
            </div>
            </form>
    </aside>
        </div>
        
	<!-- 사진 확대 모달 창 -->   
     <div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-body">
        		<img src="" id="galleryImage" class="img-responsive" />
        		<p>
        		    <br/>
        		    <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
        		</p>
        	</div>
        </div>
        </div>
    </div>
    </section>
 
   
    


    <br><br><br><br><br><br><br><br>
    <%@ include file="/WEB-INF/views/header_footer/footer.jsp"%>
</body>
</html>