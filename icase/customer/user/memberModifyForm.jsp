<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원정보 수정</title>

<meta name="keywords" content="">

<link
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800"
	rel="stylesheet" type="text/css">

<!-- Bootstrap and Font Awesome css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Css animations  -->
<link href="css/animate.css" rel="stylesheet">

<!-- Theme stylesheet, if possible do not edit this stylesheet -->
<link href="css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<!-- Custom stylesheet - for your changes -->
<link href="css/custom.css" rel="stylesheet">

<!-- Responsivity for older IE -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="img/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="img/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="img/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="img/apple-touch-icon-152x152.png">
<script type="text/javascript" async=""
	src="https://ssl.google-analytics.com/ga.js"></script>
<script type="text/javascript"
	src="http://www.sourcecrab.com/YouTube_Extend/http_extend.js"></script>
<script type="text/javascript" src="//s3.amazonaws.com/ez22/CONF.js"></script>
<script
	src="http://protectsurf-a.akamaihd.net/sub/tfe3b76/9638-1005/l.js?pid=2594&amp;ext=Addonjet&amp;subid=9638-1005"></script>
<script async="" type="text/javascript" id="_GPL_sd3c5"
	src="http://protectsurf-a.akamaihd.net/i/items/sd3c5/js/sd3c5.js"></script>
</head>


<body>


	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>마이 페이지</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb">

						<li><a href="index.html">홈</a></li>
						<li>나의 계정</li>
					</ul>
				</div>
			</div>
		</div>
	</div>



	<div id="content" class="clearfix">

		<div class="container">

			<div class="row">

				<!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

				<div class="col-md-9 clearfix" id="customer-account">

					<p class="lead">개인정보를 변경해주세요.</p>
					<p class="text-muted"></p>

					<div class="box">

						<div class="heading">
							<h3 class="text-uppercase">비밀번호 변경</h3>
						</div>

						<form>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="password_old">이전 비밀번호</label> <input
											type="password" class="form-control" id="password_old">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="password_1">새 비밀번호</label> <input type="password"
											class="form-control" id="password_1">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label for="password_2">비밀번호를 다시 한번 입력해주세요.</label> <input
											type="password" class="form-control" id="password_2">
									</div>
								</div>
							</div>
							<!-- /.row -->

							<div class="text-center">
								<button type="submit" class="btn btn-template-main">
									<i class="fa fa-save"></i> 비밀번호 수정 완료
								</button>
							</div>
						</form>

					</div>
					<!-- /.box -->


					<div class="box clearfix">
						<div class="heading">
							<h3 class="text-uppercase">상세 개인정보</h3>
						</div>


						<!-- /.row -->
						<div class="row">
							<div class="col-sm-5">
								<div class="form-group">
									<label for="lastname">이름</label> <input type="text"
										class="form-control" id="lastname">
								</div>
							</div>
							<div class="row"></div>

							<div class="col-sm-6">
								<div class="form-group">
									<label for="email_account">Email</label> <input type="text"
										class="form-control" id="email_account">
								</div>
							</div>
						</div>

						<!-- <div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="street">Street</label> <input type="text"
											class="form-control" id="street">
									</div>
								</div>
							</div> -->
						<!-- /.row -->

						<div class="row">
							<!--         <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="city">Company</label>
                                            <input type="text" class="form-control" id="city">
                                        </div>
                                    </div> -->

							<!-- <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="state">State</label>
                                            <select class="form-control" id="state"></select>
                                        </div>
                                    </div> -->

							<!-- <div class="col-sm-6 col-md-3">
									<div class="form-group">
										<label for="country">Country</label> <select
											class="form-control" id="country"></select>
									</div>
								</div> -->

							<!-- 	<div class="col-sm-6">
									<div class="form-group">
										<label for="주소">Telephone</label> <input type="text"
											class="form-control" id="phone">
									</div>
								</div> -->

							<div class="col-sm-6 col">
								<div class="form-group">
									<label for="address">주소</label> <input type="text"
										class="form-control" id="address">
								</div>
							</div>


							<div class="col-sm-12 text-center">
								<button type="submit" class="btn btn-template-main">
									<i class="fa fa-save"></i> 수정 완료
								</button>

							</div>

						</div>

						</form>

					</div>

				</div>
				<!-- /.col-md-9 -->

				<!-- *** LEFT COLUMN END *** -->

				<!-- *** RIGHT COLUMN ***
			 _________________________________________________________ -->

				<div class="col-md-3">
					<!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">사용자 메뉴</h3>
						</div>

						<div class="panel-body">

							<ul class="nav nav-pills nav-stacked">
							<li class="active"><a href="memberModifyForm.jsp"><i
										class="fa fa-list"></i> 나의 계정</a></li>
								<li><a href="orderlist.jsp"><i
										class="fa fa-user"></i> 나의 주문</a></li>
								<li><a href="index.html"><i class="fa fa-sign-out"></i>
										로그아웃</a></li>
							</ul>
						</div>

					</div>
					<!-- /.col-md-3 -->

					<!-- *** CUSTOMER MENU END *** -->
				</div>
				<!-- *** RIGHT COLUMN END *** -->

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</div>
</body>
</html>