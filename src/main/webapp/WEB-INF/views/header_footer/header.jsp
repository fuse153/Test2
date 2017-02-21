<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

    <meta charset="utf-8">
    <title>X_ShoppingMall</title>
    <meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="resources/bootstrap/css/animate.min.css" />
    <link rel="stylesheet" href="resources/bootstrap/css/ionicons.min.css" />
    <link rel="stylesheet" href="resources/bootstrap/css/styles.css" />
  </head>
  <body>
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="home">X_ShoppingMall</a>
                
            </div>
             <div class="bs-component">
          
                <ul class="nav navbar-nav">
                    
                    <li>
                   		<a class="page-scroll" href="#one">쇼핑몰 소개</a>
                    </li>

                    <li>
                        <a class="page-scroll" href="#last">문의 사항</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="Man_shop">상품 구매</a>
                    </li>
                    <li>
                    <br>
                    <form action="item_history" method="post">	
                   		<button type="submit" class="btn btn-default"> 주문내역 </button>		                     
                        <input type ="hidden" name="EMAIL" value="${USER_NAME}"/>
                    </form>
                    </li>
                    <li>
                       
                    </li>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                	
                	
                	<!-- EL을 쓰고 싶을때는, '객체변수' 여야지만 가능 -->
                	<!-- c:set의 변수는 페이지 컨텍스트에 저장됨. -->
     				<c:set var="name" value="${USER_NAME}" scope="session" />
     				<c:choose>
                    	<c:when test="${empty name}">
                    	&nbsp;
	                
	                   <li>
	                        <a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#member_joinModal"><button type="button" class="btn btn-primary">회원가입</button></a>
	                    </li>
	                    &nbsp;
	                    <li>
	                        <a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#loginModal"><button type="button" class="btn btn-primary">로그인</button></a>
	                    </li>
	                    
	                    </c:when>
	                    <c:otherwise>
	                    <br>
	                    &nbsp;
	                    <li>
	            			<button type="button" class="btn btn-primary"> ${name} 님 방문을 환영합니다.</button> &nbsp;&nbsp;	
	                    </li>
	                   
	                    <li>
	                    	<form action = "M_logout" method="get">
	                        	<button type="submit" class="btn btn-default"> LogOut </button>
	                        </form>
	                    </li>
	                    </c:otherwise>
	                </c:choose>
                  
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- 회원 가입하는 섹션 -->
    <div id="member_joinModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-body">
        		<h2 class="text-center">회원가입</h2>
        		<h5 class="text-center">
        		   내용을 입력하세요
        		</h5>
					<p class="text-justify">
					
					<form action = "M_register" method="post" class="form-horizontal">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" name="email" class="form-control" id="inputEmail3"
									placeholder="Email">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10">
								<input type="text" name="name" class="form-control" id="inputEmail3"
									placeholder="Name">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" name="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox"> Remember me
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Join Us</button>
	        					<button class="btn btn-primary btn-lg " data-dismiss="modal" aria-hidden="true"> Cancel </button>
							</div>
						</div>
					</form>
				
        		<br/>
        	</div>
        </div>
        </div>
    </div>
    
       <!-- 로그인 하는 섹션 -->
    <div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-body">
        		<h2 class="text-center">로그인</h2>
        		<h5 class="text-center">
        		   내용을 입력하세요
        		</h5>
					<p class="text-justify">
					
					<form action = "M_login" method="post" class="form-horizontal">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" name="email" class="form-control" id="inputEmail3"
									placeholder="Email">
							</div>
						</div>
					
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" name="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox"> Remember me
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default"> Login </button>
								<button class="btn btn-primary btn-lg" data-dismiss="modal" aria-hidden="true"> Cancel </button>
							</div>
						</div>
					</form>
        	</div>
        </div>
        </div>
    </div>
    
    