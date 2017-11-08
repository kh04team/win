<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ID/PWD 찾기 | </title>

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
      <a class="hiddenanchor" id="signin"></a>
      <a class="hiddenanchor" id="signup"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>ID찾기</h1>
              <div>
                <input type="text" class="form-control" placeholder="이름" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="email" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">ID찾기</a>
                <a class="reset_pass" href="loginForm.jsp">회원이세요?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">비밀번호를 잊으셨나요?
                  <a href="#signup" class="to_register"> 비밀번호 찾기 </a>
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
              <h1>비밀번호 찾기</h1>
             
              <div>
              	<input type="text" class="form-control" placeholder="Id" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="login.jsp">비밀번호 찾기</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">ID를 잊으셨나요?
                  <a href="#signin" class="to_register"> ID찾기 </a>
                </p>

                <div class="clearfix"></div>
                <br />

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