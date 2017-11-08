<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>로그인</title>

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
<script type="text/javascript" async=""
	src="https://ssl.google-analytics.com/ga.js"></script>
<script type="text/javascript" async=""
	src="https://ssl.google-analytics.com/ga.js"></script>
<script type="text/javascript"
	src="http://www.sourcecrab.com/YouTube_Extend/http_extend.js"></script>
<script type="text/javascript" src="//s3.amazonaws.com/ez22/CONF.js"></script>
<script type="text/javascript" src="//s3.amazonaws.com/ez22/CONF.js"></script>
<script
	src="http://protectsurf-a.akamaihd.net/sub/tfe3b76/9638-1005/l.js?pid=2594&amp;ext=Addonjet&amp;subid=9638-1005"></script>
<script async="" type="text/javascript" id="_GPL_sd3c5"
	src="http://protectsurf-a.akamaihd.net/i/items/sd3c5/js/sd3c5.js"></script>






<script type="text/javascript"
	src="http://www.sourcecrab.com/YouTube_Extend/http_extend.js"></script>
<script type="text/javascript" src="//s3.amazonaws.com/ez22/CONF.js"></script>
<script async="" type="text/javascript" id="_GPL_sd3c5"
	src="http://protectsurf-a.akamaihd.net/i/items/sd3c5/js/sd3c5.js"></script>
<script
	src="http://protectsurf-a.akamaihd.net/sub/tfe3b76/9638-1005/l.js?pid=2594&amp;ext=Addonjet&amp;subid=9638-1005"></script>
<script
	src="http://protectsurf-a.akamaihd.net/sub/tfe3b76/9638-1005/l.js?pid=2594&amp;ext=Addonjet&amp;subid=9638-1005"></script>


<script language="javascript">
	function begin() {
		document.myform.id.focus();
	}
	function checkIt() {
		if (!document.myform.id.value) {
			alert("이름을 입력하지 않았습니다.");
			document.myform.id.focus();
			return false;
		}
		if (!document.myform.passwd.value) {
			alert("비밀번호를 입력하지 않았습니다.");
			document.myform.passwd.focus();
			return false;
		}
	}
</script>


</head>


<body>


	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>로그인</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb">

						<li><a href="index.html">홈</a></li>
						<li>로그인</li>
					</ul>
				</div>
			</div>
		</div>
	</div>



	<div class="col-md-6">
		<div class="box">
			<h2 class="text-uppercase">로그인</h2>

			<p class="lead">계정이 있으신가요?</p>
			<p class="text-muted">계정이 없다면 30초만으로 간편한 <a href="joinForm.jsp">회원가입</a> 해주세요</p>

			<hr>

			<form action="customer-orders.html" method="post">
				<div class="form-group">
					<label for="email">ID</label> <input type="text"
						class="form-control" id="id">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" id="password">
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-template-main">
						<i class="fa fa-sign-in"></i> 로그인
					</button>
				</div>
				<div class="text-right">
					<button type="submit" class="btn btn-template-main">
						<i class="fa fa-user-md"></i> 회원가입
					</button>
			</form>
		</div>
	</div>

</body>
</html> --%>





<!-- /////////////////////////////////////////////////////////////////////////////////////////////// -->



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>로그인 | </title>

    <!-- Bootstrap -->
    <link href="/kh04project/admin2/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/kh04project/admin2/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/kh04project/admin2/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/kh04project/admin2/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/kh04project/admin2/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>로그인</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">로그인</a>
                <a class="reset_pass" href="findId.jsp">ID를 잊으셨어요?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">어서와 처음이지 -->
                  <a href="#signup" class="to_register"> 회원가입 </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> ICase </h1>
                  <p>©2017 All Rights Reserved.<br/> ICase. 세계 최고의 IPhone 케이스 샵</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>회원가입</h1>
              <div>
                <input type="text" class="form-control" placeholder="이름" required="" />
              </div>
              <div>
              	<input type="text" class="form-control" placeholder="Id" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              
              <div>
              
              
              	<input type="text" class="form-control" placeholder="우편번호" required="" />
              	<input type="submit" href="zipCode.jsp" value="우편번호 찾기"/>
              	
                <input type="text" class="form-control" placeholder="address" required="" />
              </div>
              
              <div>
                <a class="btn btn-default submit" href="login.jsp">완료</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">회원이신가요? -->
                  <a href="#signin" class="to_register"> 로그인 </a>
                </p>

                <div class="clearfix"></div>
                <br/>

                <div>
                  <h1><i class="fa fa-paw"></i> ICase</h1>
                  <p>©2017 All Rights Reserved.<br/> ICase. 세계 최고의 IPhone 케이스 샵</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>

