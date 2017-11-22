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
                <div class="col-md-6 col-sm-6">
                    <h4>About us</h4>

                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>

                    <hr>


                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-6 col-sm-6">

                    <h4>Contact</h4>

                    <p><strong>Icase Company</strong>
                        <br>13/25 New Avenue Newtown upon River 5Y 73J England
                        <br>
                        <strong>Repulic of Korea</strong>
                    </p>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>

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
                    <p class="pull-left">&copy; 2017. Icase company / Icase cooperation</p>
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

	//JT
	
	function change_qty(qty)
	{			
		$("#goods_price").val($("#one_goods_price").val()*qty);
		$("#total_price").val($("#one_goods_price").val()*qty);
		$("#goods_price_view").text("￦"+$.number($("#goods_price").val()));
	}
	
	function delete_order(no)
	{
		if(confirm('삭제하시겠습니까?')) location.href = '/icase/order_delete.action?no='+no;						
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
	
	function choice_all_settle()
	{
		if(confirm('전체결제하시겠습니까?'))
		{
		   var basket_array = "";
		   $("input:checkbox[id='basket_no']").each(function() { 
	
			   if($(this).prop("checked") == false) $(this).prop("checked", true);		   
			   basket_array = basket_array + "||" + $(this).val();
		   	   
		   });
		   
		   $("#choice_basket_no_list").val(basket_array);
		   
		   $('form[name=basket_form]').attr({action:'/icase/basketSettle.action', method:'post'}).submit();
		}
	}	
	
	function choice_select_delete()
	{
		if(confirm('선택삭제하시겠습니까?'))
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
		   
		   $('form[name=basket_form]').attr({action:'/icase/basketAllDelete.action', method:'post'}).submit();
		}
	   
	}		
	
	function choice_all_delete()
	{
		if(confirm('전체삭제하시겠습니까?'))
		{
		   var basket_array = "";
		   $("input:checkbox[id='basket_no']").each(function() { 
	
			   if($(this).prop("checked") == false) $(this).prop("checked", true);		   
			   basket_array = basket_array + "||" + $(this).val();
		   	   
		   });
		   
		   $("#choice_basket_no_list").val(basket_array);
		   
		   $('form[name=basket_form]').attr({action:'/icase/basketAllDelete.action', method:'post'}).submit();
		}
	   
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
	
	function qty_value_change(id,qty,no,goods_no,evt)
	{
		var keyCode1 = evt.keyCode ? evt.keyCode : evt.which;
		
		$("#"+id).val($("#"+id).val().replace(/[^0-9]/g,""));
		
		if(keyCode1 != 8 || (keyCode1 >= 37 && keyCode1 >= 40))
		{
			if($("#"+id).val() == "" || $("#"+id).val() < 1) $("#"+id).val(1);	
		}
		
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
			
			
			$("#settle_type").change(function () {
				
				if($(this).val() == "무통장")
				{
					$("#mutongjang").show();						
				}
				else
				{
					$("#mutongjang").hide();												
				}
				
			});
			
  			$("#order_modify").click(function () {
				 				
	   			if($("#sample4_jibunAddress").val() == "")
	   			{
	   				alert("상세주소를 입력해주세요.");	
	   				$("#sample4_jibunAddress").focus();
	   				return;
	   			}	   	
	   			
	   			if($("#order_memo").val() == "")
	   			{
	   				alert("배송메모를 입력 해주세요.");
	   				$("#order_memo").focus();
	   				return;
	   			}
	   			
	   			$('#oderlistview').attr({action:'adOrdermodify.action', method:'post'}).submit();	   		
	   		
	   		}); 
		
		$("#settlActionButton").click(function () {
			
			if(confirm("결제하시겠습니까?"))
			{
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
				
				if($("#phone").val() == "")
				{
					alert("연락처를 입력해주세요.");
					$("#phone").focus();
					return;
				}						
				
				if($("#settle_type").val() == "")
				{
					alert("결제수단을 선택해주세요.");
					$("#settle_type").focus();
					return;
				}				
				
				$('form[name=order_settle_form]').attr({action:'/icase/order_process.action', method:'post'}).submit();
			}
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
			
			if(confirm("주문하시겠습니까?"))
			{
  				if($("#goods_qty").val() == "")
  				{
  					alert("주문 수량을 선택해주세요.");
  					$("#goods_qty").focus();
  					return;
  				}  				
  				
  				<s:if test="#session.id == null">
  					alert("로그인해주세요.");
  					location.href = "/icase/loginform.action";
  					return;
  				</s:if>
  				
				$('form[name=goods_detail_form]').attr({action:'/icase/goodsSettle.action', method:'post'}).submit();
			}
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
		
	//HL
	function move_qnamodify_form(no)
	{
		if(confirm("수정하시겠습니까?")) 	location.href = "/icase/qna_modifyform.action?no="+no;
	}	
	function move_qnadelete_form(no)
	{
		if(confirm("삭제하시겠습니까?")) 	location.href = "/icase/qna_delete.action?no="+no;
	}
	
	//qna 입력
	$("#qnacancel").click(function () {
		{
			location.href = "/icase/qna_list.action";
		}
	});
	
	// qna 수정
	$("#qnalist").click(function () {
		location.href = "/icase/qna_list.action";
	});
	
	// 20171120 박종택 스크립트 추가
	function orderStatusChange(no)
	{
		if(confirm("주문취소하시겠습니까?"))
		{
			location.href = "/icase/orderStatusChange.action?no="+no;
			return;
		}
	}
		
	function orderStatusBack(no)
	{
		if(confirm("반품신청하시겠습니까?"))
		{
			location.href = "/icase/orderStatusBackForm.action?no="+no+"&orderStatus=back";
			return;
		}
	}


	function orderStatusRefund(no)
	{
		if(confirm("환불신청하시겠습니까?"))
		{
			location.href = "/icase/orderStatusRefundForm.action?no="+no+"&orderStatus=refund";
			return;
		}
	}
	
	function orderStatusChange(no)
	{
		if(confirm("교환신청하시겠습니까?"))
		{
			location.href = "/icase/orderStatusChangeForm.action?no="+no+"&orderStatus=change";
			return;
		}
	}	
	
	function backRequest()
	{
		if($("#reason").val() == "")
		{
			alert("반품사유를 입력해주세요.");
			$("#reason").focus();
			return;
		}
		
		if(confirm("반품신청하시겠습니까?")) $('form[name=refundForm]').attr({action:'/icase/goodsBack.action', method:'post'}).submit();
	}
	
	function refundRequest()
	{
		if($("#reason").val() == "")
		{
			alert("환불사유를 입력해주세요.");
			$("#reason").focus();
			return;
		}
		
		if(confirm("환불신청하시겠습니까?")) $('form[name=refundForm]').attr({action:'/icase/goodsRefund.action', method:'post'}).submit();
	}	
	
	function changeRequest()
	{
		if($("#reason").val() == "")
		{
			alert("교환사유를 입력해주세요.");
			$("#reason").focus();
			return;
		}
		
		if(confirm("교환신청하시겠습니까?")) $('form[name=refundForm]').attr({action:'/icase/goodsChange.action', method:'post'}).submit();
	}		
	// end 
	
	</script>

</body>

</html>