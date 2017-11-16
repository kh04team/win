<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %>  
        <!-- *** FOOTER ***
_________________________________________________________ -->

        <footer id="footer">
            <div class="container">
                <div class="col-md-3 col-sm-6">
                    <h4>About us</h4>

                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>

                    <hr>

                    <h4>Join our monthly newsletter</h4>

                    <form>
                        <div class="input-group">

                            <input type="text" class="form-control">

                            <span class="input-group-btn">

                        <button class="btn btn-default" type="button"><i class="fa fa-send"></i></button>

                    </span>

                        </div>
                        <!-- /input-group -->
                    </form>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>Blog</h4>

                    <div class="blog-entries">
                        <div class="item same-height-row clearfix">
                            <div class="image same-height-always">
                                <a href="#">
                                    <img class="img-responsive" src="/icase/customer/img/detailsquare.jpg" alt="">
                                </a>
                            </div>
                            <div class="name same-height-always">
                                <h5><a href="#">Blog post name</a></h5>
                            </div>
                        </div>

                        <div class="item same-height-row clearfix">
                            <div class="image same-height-always">
                                <a href="#">
                                    <img class="img-responsive" src="/icase/customer/img/detailsquare.jpg" alt="">
                                </a>
                            </div>
                            <div class="name same-height-always">
                                <h5><a href="#">Blog post name</a></h5>
                            </div>
                        </div>

                        <div class="item same-height-row clearfix">
                            <div class="image same-height-always">
                                <a href="#">
                                    <img class="img-responsive" src="/icase/customer/img/detailsquare.jpg" alt="">
                                </a>
                            </div>
                            <div class="name same-height-always">
                                <h5><a href="#">Very very long blog post name</a></h5>
                            </div>
                        </div>
                    </div>

                    <hr class="hidden-md hidden-lg">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>Contact</h4>

                    <p><strong>Universal Ltd.</strong>
                        <br>13/25 New Avenue
                        <br>Newtown upon River
                        <br>45Y 73J
                        <br>England
                        <br>
                        <strong>Great Britain</strong>
                    </p>

                    <a href="contact.html" class="btn btn-small btn-template-main">Go to contact page</a>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->



                <div class="col-md-3 col-sm-6">

                    <h4>Photostream</h4>

                    <div class="photostream">
                        <div>
                            <a href="#">
                                <img src="/icase/customer/img/detailsquare.jpg" class="img-responsive" alt="#">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="/icase/customer/img/detailsquare2.jpg" class="img-responsive" alt="#">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="/icase/customer/img/detailsquare3.jpg" class="img-responsive" alt="#">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="/icase/customer/img/detailsquare3.jpg" class="img-responsive" alt="#">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="/icase/customer/img/detailsquare2.jpg" class="img-responsive" alt="#">
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <img src="/icase/customer/img/detailsquare.jpg" class="img-responsive" alt="#">
                            </a>
                        </div>
                    </div>

                </div>
                <!-- /.col-md-3 -->
            </div>
            <!-- /.container -->
        </footer>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->

        <!-- *** COPYRIGHT ***
_________________________________________________________ -->

        <div id="copyright">
            <div class="container">
                <div class="col-md-12">
                    <p class="pull-left">&copy; 2015. Your company / name goes here</p>
                    <p class="pull-right">Template by <a href="https://bootstrapious.com">Bootstrapious</a> & <a href="https://fity.cz">Fity.cz</a>
                         <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>

                </div>
            </div>
        </div>
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->

    <!-- #### JAVASCRIPT FILES ### -->

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="/icase/customer/js/jquery-1.11.0.min.js"><\/script>')
    </script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <script src="/icase/customer/js/jquery.cookie.js"></script>
    <script src="/icase/customer/js/waypoints.min.js"></script>
    <script src="/icase/customer/js/jquery.counterup.min.js"></script>
    <script src="/icase/customer/js/jquery.parallax-1.1.3.js"></script>
    <script src="/icase/customer/js/front.js"></script>
    <script src="/icase/customer/js/jquery.number.min.js"></script>

    

    <!-- owl carousel -->
    <script src="/icase/customer/js/owl.carousel.min.js"></script>

	<script type="text/javascript">
	
		function change_qty(qty)
		{			
			$("#goods_price").val($("#one_goods_price").val()*qty);
			$("#total_price").val($("#one_goods_price").val()*qty);
			$("#goods_price_view").text("￦"+$.number($("#goods_price").val()));
		}
	
		function delete_basket(no)
		{
			if(confirm('삭제하시겠습니까?')) location.href = '/icase/basket_delete.action?no='+no;			
		}
		
		function choice_settle()
		{
		   if($('input[name=basket_no]:checked').length == 0) 
		   {
			   alert("주문을 선택해주세요.");
			   return;
		   }
			
		   var basket_array = "";
		   $('input[name=basket_no]:checked').each(function() { 
			   
			   basket_array = basket_array + "||" + $(this).val();
		   	   
		   });
		   
		   $("#choice_basket_no_list").val(basket_array);
		   
		   $('form[name=basket_form]').attr({action:'/icase/basketSettle.action', method:'post'}).submit();
		   
		}
		
		function qty_value_set(id,qty,no,goods_no)
		{
			if($("#"+id).val() == "" || $("#"+id).val() < 1) $("#"+id).val(1);
			
  		    var params="no="+no+"&goods_qty="+$("#"+id).val()+"&goods_no="+goods_no;  
  		    
  	        $.ajax({
  	            type : "POST",
  	            url : "/icase/basket_change.action",
  	            data:params, 
  	            error : function(){
  	                //alert('통신실패!!');
  	            },
  	            success : function(data){
  	                $.trim(data);
  	              	var data_array = data.split("||");
					$("#goods_price_"+no).text("￦"+$.number(data_array[0]));
					$("#total_sum_1").text("￦"+$.number(data_array[1]));					
					$("#total_sum_2").text("￦"+$.number(data_array[1]));					
					$("#total_sum_3").text("￦"+$.number(data_array[1]));										
  	            }  	             
  	        });
			
		}
		
		function qty_value_change(id,qty,no,goods_no)
		{
			$("#"+id).val($("#"+id).val().replace(/[^0-9]/g,""));
			
			if($("#"+id).val() == "" || $("#"+id).val() < 1) $("#"+id).val(1);	
			
  		    var params="no="+no+"&goods_qty="+$("#"+id).val()+"&goods_no="+goods_no;  
  		    
  	        $.ajax({
  	            type : "POST",
  	            url : "/icase/basket_change.action",
  	            data:params, 
  	            error : function(){
  	                //alert('통신실패!!');
  	            },
  	            success : function(data){
  	                $.trim(data);
  	              	var data_array = data.split("||");
					$("#goods_price_"+no).text("￦"+$.number(data_array[0]));
					$("#total_sum_1").text("￦"+$.number(data_array[1]));					
					$("#total_sum_2").text("￦"+$.number(data_array[1]));					
					$("#total_sum_3").text("￦"+$.number(data_array[1]));										
  	            }  	             
  	        });
  	        
		}
		
		$(function() {			
			
			$("#settlActionButton").click(function () {
				
				if($("#mem_name").val() == "")
				{
					alert("주문자 이름을 넣어주세요.");
					$("#mem_name").focus();
					return;
				}

				if($("#sample4_postcode").val() == "")
				{
					alert("주소 찾기를 해주세요.");
					$("#sample4_postcode").focus();
					return;
				}

				if($("#sample4_roadAddress").val() == "")
				{
					alert("주소 찾기를 해주세요.");
					$("#sample4_roadAddress").focus();
					return;
				}
				
				if($("#sample4_jibunAddress").val() == "")
				{
					alert("상세주소를 입력해주세요.");
					$("#sample4_jibunAddress").focus();
					return;
				}
				
				$('form[name=order_settle_form]').attr({action:'/icase/basket_process.action', method:'post'}).submit();
				
			});
			
			$("#basket_check_all").click(function () {
				
			   $('input[name=basket_no]').each(function() { 
				   
				   if($(this).prop('checked') == true) $(this).prop('checked', false);
				   else $(this).prop('checked', true);				   
			   	   
			   });
								
			});
			
			$("#basket_action").click(function () {
				
				<s:if test="#session.id == null">
					alert("로그인하셔야 가능합니다.");
					return;
				</s:if>
				
				if(confirm("장바구니에 넣으시겠습니까?"))
				{
					$('form[name=goods_detail_form]').attr({action:'/icase/basket_process.action', method:'post'}).submit();
				}
				
			});
			
			$("#login_button").click(function () {
				
				if($("input[name=userid]").val() == "")
				{
					alert("아이디를 입력해주세요.");
					$("input[name=userid]").focus();
					return false;
				}

				if($("input[name=password]").val() == "")
				{
					alert("비밀번호를 입력해주세요.");
					$("input[name=password]").focus();
					return false;
				}
				
				$('form[name=loginForm]').attr({action:'login_process.action', method:'post'}).submit();
				
			});
			
			$("#order_action").click(function () {
				
  				if($("#goods_qty").val() == "")
  				{
  					alert("주문 수량을 선택해주세요.");
  					$("#goods_qty").focus();
  					return;
  				}  				
  				
  				alert("주문담당 민식군과 협의하여 구현하겠습니다.");
  				return;
				
				$('form[name=goods_detail_form]').attr({action:'goodslist.action', method:'post'}).submit();
				
			});
			
  			$("#search_button").click(function () {
  				
  				if($("#searchKeyword").val() == "")
  				{
  					alert("검색내용을 입력해주세요.");
  					$("#searchKeyword").focus();
  					return;
  				}  				
  				
  				$('form[name=goods_search]').attr({action:'goodslist.action', method:'post'}).submit();
  				
  			});

		});
	
	</script>

</body>

</html>