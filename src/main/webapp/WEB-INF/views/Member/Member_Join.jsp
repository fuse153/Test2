<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="resources/bootstrap/css/custom.min.css">
    <link rel="stylesheet" href="resources/bootstrap337/css/bootstrap.min.css" />
	<!-- 부트스트렙에서 자바스크립트를 쓰려면, jquery도 있어야 함. jquery가 반드시 먼저, 임포트 -->
	<script src="resources/bootstrap337/js/jquery-3.1.1.min.js"></script>
	<script src="resources/bootstrap337/js/bootstrap.min.js"></script>
	<script>
	$(function(){
		//alert("test...");
		//버튼에 접근해 클릭했을때,
		$("#btnPopup").click(function(){
			$("#theModal").modal(); //자바스크립트에서 id로만 접근하는 방법과 같음.
		});
	});
</script>

</head>
<body>
<div class="container">
		<!-- 하나의 행이 기준 -->
		<div class="row">
			<div class="col-md-9">
				<!-- fade는 점점점 나타나고, 점점점 사라지는 효과 -->
				<!-- id는 #으로 접근 class는 .으로 접근; data-backdrop="static"는 다른 화면 눌러도 모달창이 사라지지 않음. -->
				<div class="modal fade" id="theModal" data-backdrop="static">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h3>모달 헤더</h3>
							</div>
							<div class="modal-body">
								<p>본문 영역...</p>
								<p>본문 영역...</p>
								<p>본문 영역...</p>
							</div>
							<div class="modal-footer">
								<button class="btn btn-primary" data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				<a href="#theModal" data-toggle="modal">모달 창 열기</a><br/>
				<input type="button" value="모달창 열기" data-toggle="modal"
					data-target="#theModal"/><br/>
				<input type="button" value="모달창 열기" id="btnPopup"/>
			</div>
		</div>
	</div>



 <!-- Forms
      ================================================== -->
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form action = "M_register" method = "post" class="form-horizontal">
                <fieldset>
                  <legend>회원가입</legend>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                    <div class="col-lg-10">
                      <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                    
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="textArea"></textarea>
                      <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-2 control-label">Radios</label>
                    <div class="col-lg-10">
                      <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                          Option one is this
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          Option two can be something else
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="select" class="col-lg-2 control-label">Selects</label>
                    <div class="col-lg-10">
                      <select class="form-control" id="select">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                      <br>
                      <select multiple="" class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Cancel</button>
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </div>
                </fieldset>
              </form>
            </div>
          </div>
        </div>
      </div>

</body>
</html>