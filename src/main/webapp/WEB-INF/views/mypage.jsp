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
          <div class="col-md-12">
					<table class="table table-hover table-bordered">
						<colgroup>
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
						</colgroup>
						<thead>
							<tr>
								<th style="text-align : center;">결제 일시</th>
								<th style="text-align : center;">상품 분류</th>
								<th style="text-align : center;">상품명</th>
								<th style="text-align : center;">상품금액</th>
							</tr>
						</thead>
							<tbody>
							<!-- JSTL로 컨트롤러에서 값을 처리해서 온 값을 뿌려주는 부분 입니다. -->
								<c:choose>
									<c:when test="${item.size() eq '0' }">
										<tr>
											<td class="cen" colspan="4">*이용권 내역이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
								
										<c:forEach items="${item}" var="item" >
											<tr>
												<td>${item.getPur_date()}</td>
												<td>${item.getItem_kind()}</td>
												<td>${item.getItem_name()}</td>
												<td>${item.getItem_sum()}</td>
												
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
					</table>
							
				</div>
				</div>
           
					</div>
    		</aside>
            </section>
        

 
   
    


    <br><br><br><br><br><br><br><br>
    <%@ include file="/WEB-INF/views/header_footer/footer.jsp"%>
</body>
</html>