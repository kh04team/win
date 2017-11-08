<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>공지사항 상세보기</title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Favicon and apple touch icons-->

</head>



        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>공지사항 상세보기</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li><a href="cmsQnaList.jsp">공지사항</a>
                            </li>
                            <li>공지사항 상세보기</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div id="content">
            <div class="container">

                <div class="row">

                    <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                    <div class="col-md-9 clearfix" id="customer-order">

                        <p class="lead"><strong>공지사항</strong>입니다. 
                        <br><strong>공지방에서 사담 자제요</strong></p>

                        <div class="box">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>			
      <tr>
      <tr>
        <td bgcolor="#F4F4F4">  번호 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.no" />
        </td>
      </tr>
      <tr>
        <td width="100" bgcolor="#F4F4F4">  제목</td>
        <td width="500" bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.subject" />
        </td>
      </tr>
           <tr>
        <td bgcolor="#F4F4F4">  글쓴이 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.name" />
        </td>
                    <tr>
        <td bgcolor="#F4F4F4">  등록날짜 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.regdate" />
        </td>
      </tr>
        </tr>
           <tr>
        <td bgcolor="#F4F4F4">  내용 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.content" />
        </td>
      </tr>			
                                  
                    
   </thead>
                   <tr align="right">
                       <td colspan="5">
      
	<button id="modify" type="button" class="btn btn-primary">수정</button>
  <button id="delete" type="button" class="btn btn-success">삭제</button>
  <button id="list" type="button" class="btn btn-primary">목록</button>
		</td>
		</tr>
                                </table>
                                
 
                            </div>
                            <!-- /.table-responsive -->
 
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
<script type="text/javascript">

		$(function() {

	   		$("#modify").click(function () {
	   			
				/*
	   			if($("#category_name").val() == "")
	   			{
	   				alert("카테고리 이름을 입력해주세요.");	
	   				$("#category_name").focus();
	   				return;
	   			}
	   			
	   			$("#category_no").val("");
	   			
   				$('#category_form').attr({action:'cateogyrWriteAction.action', method:'post'}).submit();
				*/
				if(confirm("수정하시겠습니까?")) 
				{
					location.href = "/shop/hyelim/adNoticeModifyForm.jsp";
				}

	   		});

		});
		
		$(function() {

	   		$("#delete").click(function () {
	   			
				/*
	   			if($("#category_name").val() == "")
	   			{
	   				alert("카테고리 이름을 입력해주세요.");	
	   				$("#category_name").focus();
	   				return;
	   			}
	   			
	   			$("#category_no").val("");
	   			
   				$('#category_form').attr({action:'cateogyrWriteAction.action', method:'post'}).submit();
				*/
				if(confirm("삭제하시겠습니까?")) 
				{
					location.href = "/shop/hyelim/cmsNoticeList.jsp";
				}

	   		});

		});
		$(function() {

	   		$("#list").click(function () {
	   			
				/*
	   			if($("#category_name").val() == "")
	   			{
	   				alert("카테고리 이름을 입력해주세요.");	
	   				$("#category_name").focus();
	   				return;
	   			}
	   			
	   			$("#category_no").val("");
	   			
   				$('#category_form').attr({action:'cateogyrWriteAction.action', method:'post'}).submit();
				*/
/* 				if(confirm("목록으로 돌아가시겠습니까?"))  */
				{
					location.href = "/shop/hyelim/cmsNoticeList.jsp";
				}

	   		});

		});
		

</script>
</body>
</html>