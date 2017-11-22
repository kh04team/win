<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %>  

<tiles:insertAttribute name="header"/>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">

		<tiles:insertAttribute name="leftmenu"/>
		<tiles:insertAttribute name="top"/>             
        <tiles:insertAttribute name="body"/>

      </div>
    </div>

    <!-- jQuery -->
    <script src="/icase/admin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/icase/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/icase/admin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/icase/admin/vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/icase/admin/vendors/moment/min/moment.min.js"></script>    
    <script src="/icase/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="/icase/admin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>  
    <!-- iCheck -->
    <script src="/icase/admin/vendors/iCheck/icheck.min.js"></script>    
       
  	<script src="/icase/admin/production/js/bootstrap-treeview.js"></script>
  	
	<!-- morris.js -->
	<script src="/icase/admin/vendors/raphael/raphael.js"></script>
	<script src="/icase/admin/vendors/morris.js/morris.js"></script>  	
  	
    <!-- ECharts -->
    <script src="/icase/admin/vendors/echarts/dist/echarts.js"></script>
    <script src="/icase/admin/vendors/echarts/map/js/world.js"></script>
  	
 	
    <!-- Custom Theme Scripts -->
    <script src="/icase/admin/build/js/custom.js"></script> 	
  	

  	
  	
  	<script type="text/javascript">
	 //JT
	 function submitForm(){
			$('form[name=form_ex]').attr({action:'downAction.action', method:'post'}).submit();
		}
		  	
	  		function product_list_del()
	  		{
	  			if($("#goods_no_list:checked").length == 0)
	  			{
	  				alert("선택된 상품이 없습니다.");
	  			}

	  			if(confirm("선택된 상품을 삭제하시겠습니까?"))
	  			{
	  			
		  			var checked_list = "";
		  		    $('#goods_no_list:checked').each(function() { 
		  		        checked_list = checked_list + "||" + $(this).val();
		  		    });
					
		  		  $("#product_selected_list").val(checked_list);
		  		    
		  		    var params="product_selected_list="+checked_list;  
		  		    
		  	        $.ajax({
		  	            type : "POST",
		  	            url : "/icase/product_list_del.action",
		  	            data:params, 
		  	            error : function(){
		  	                alert('통신실패!!');
		  	            },
		  	            success : function(data){
		  	                alert("상품이 삭제되었습니다.");
							location.reload();
		  	            }  	             
		  	        });
	  		    
	  			}
	  			
	  		}
	  	
	  		$(function() {
	  			
				$("#adorder_search").click(function () {
	  				
	  				if($("#searchorder").val() == "")
	  				{
	  					alert("검색내용을 입력해주세요.");
	  					$("#searchorder").focus();
	  					return;
	  				}  				
	  				
	  				$('form[name=adorderlist_search]').attr({action:'adOrderList.action', method:'post'}).submit();
	  				
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
	  			
	  			$("#back_search_button").click(function () {
	  				
	  				if($("#searchKeyword").val() == "")
	  				{
	  					alert("검색내용을 입력해주세요.");
	  					$("#searchKeyword").focus();
	  					return;
	  				}  				
	  				
	  				$('form[name=back_list_search]').attr({action:'adBackList.action', method:'post'}).submit();
	  				
	  			});	  			

	  			$("#refund_search_button").click(function () {
	  				
	  				if($("#searchKeyword").val() == "")
	  				{
	  					alert("검색내용을 입력해주세요.");
	  					$("#searchKeyword").focus();
	  					return;
	  				}  				
	  				
	  				$('form[name=refund_list_search]').attr({action:'adRefundList.action', method:'post'}).submit();
	  				
	  			});	
	  			
	  			$("#change_search_button").click(function () {
	  				
	  				if($("#searchKeyword").val() == "")
	  				{
	  					alert("검색내용을 입력해주세요.");
	  					$("#searchKeyword").focus();
	  					return;
	  				}  				
	  				
	  				$('form[name=change_list_search]').attr({action:'adChangeList.action', method:'post'}).submit();
	  				
	  			});		  			
	  			
	  			$("#search_button").click(function () {
	  				
	  				if($("#searchKeyword").val() == "")
	  				{
	  					alert("검색내용을 입력해주세요.");
	  					$("#searchKeyword").focus();
	  					return;
	  				}  				
	  				
	  				$('form[name=goods_search]').attr({action:'adGoodsList.action', method:'post'}).submit();
	  				
	  			});
	  			
	  			$("#product_regist_button").click(function () {
	  				
	  				if($("#category_no").val() == "")
	  				{
	  					alert("카테고리를 선택해주세요.");
	  					$("#category_no").focus();
	  					return;
	  				}
	  				
	  				if($("#goods_name").val() == "")
	  				{
	  					alert("상품명을 입력해주세요.");
	  					$("#goods_name").focus();
	  					return;
	  				}  		
	  				
	  				if($("#goods_qty").val() == "")
	  				{
	  					alert("상품수량을 입력해주세요.");
	  					$("#goods_qty").focus();
	  					return;
	  				}  	
	  				
	  				if($("#goods_price").val() == "")
	  				{
	  					alert("상품가격을 입력해주세요.");
	  					$("#goods_price").focus();
	  					return;
	  				}  	  	
	  				
	  				if($("#goods_color").val() == "")
	  				{
	  					alert("상품색깔을 입력해주세요.");
	  					$("#goods_color").focus();
	  					return;
	  				}  	  
		  			
	  				if($("#write_status").val() == "")
	  				{
		  				if($("#upload").val() == "")
		  				{
		  					alert("메인이미지를 선택해주세요.");
		  					$("#upload").focus();
		  					return;
		  				}  	  
		  				
		  				if($("#upload2").val() == "")
		  				{
		  					alert("상세이미지를 선택해주세요.");
		  					$("#goods_name").focus();
		  					return;
		  				}  				
		  				
		  				$('form[name=product_regist_form]').attr({action:'adGoodsWrite.action', method:'post'}).submit();
		  				
	  				}
	  				else
	  				{  				
	  					$('form[name=product_regist_form]').attr({action:'adGoodsModify.action', method:'post'}).submit();
	  				}
	  			});
	  			
	  			$("#goods_qty, #goods_price").keyup(function () {  				
	  				this.value = this.value.replace(/[^0-9]/g,'');  				
	  			});
	  			
		   		$("#category_control").click(function () {
		   			
		   			if($("#category_name").val() == "")
		   			{
		   				alert("카테고리 이름을 입력해주세요.");	
		   				$("#category_name").focus();
		   				return;
		   			}
		   			
		   			$("#category_no").val("");
		   			
	   				$('#category_form').attr({action:'cateogyrWriteAction.action', method:'post'}).submit();
		   		});  

		   		$("#category_modify").click(function () {
					
		   			if($("#category_name").val() == "")
		   			{
		   				alert("카테고리 이름을 입력해주세요.");	
		   				$("#category_name").focus();
		   				return;
		   			}	   	
		   			
		   			if($("#category_no").val() == "")
		   			{
		   				alert("수정할 카테고리를 선택해주세요.");
		   				return;
		   			}
		   			
		   			$('#category_form').attr({action:'categoryModifyAction.action', method:'post'}).submit();	   		
		   		
		   		});  
		   		
		        var defaultData = [
		        	<s:iterator value="list" status="stat">
		            {
		              text: '<s:property value="category_name" />',
		              href: '<s:property value="category_no" />',
		              stat: '<s:property value="status" />',
		              tags: ['<s:property value="category_no" />'],
		            },
		            </s:iterator>
		          ];	   		
		   		
		        
		        $('#treeview1').treeview({
		            data: defaultData,
		            onNodeSelected: function(event, node) {
						$("#write_type").val("modify");
						$("#category_no").val(node.href);
						$("#category_name").val(node.text);
						$("select[name=status]").val(node.stat);
		            }	            
		          });	   		
	   		
  		});
  		
  	//JT
  	
		function init_morris_charts() {
			
			if( typeof (Morris) === 'undefined'){ return; }
			console.log('init_morris_charts');
			
			if ($('#graph_bar').length){ 
			
				Morris.Bar({
				  element: 'graph_bar',
				  data: [
					<s:iterator value="listRate" status="stat">
						{device: '${goods_name}', geekbench: '${order_qty}'},
					</s:iterator>
					/*
					{device: 'iPhone 4S', geekbench: 655},
					{device: 'iPhone 3GS', geekbench: 275},
					{device: 'iPhone 5', geekbench: 1571},
					{device: 'iPhone 5S', geekbench: 655},
					{device: 'iPhone 6', geekbench: 2154},
					{device: 'iPhone 6 Plus', geekbench: 1144},
					{device: 'iPhone 6S', geekbench: 2371},
					{device: 'iPhone 6S Plus', geekbench: 1471},
					{device: 'Other', geekbench: 1371},
					{device: 'Other', geekbench: 1371},
					{device: 'Other2', geekbench: 1371}
					*/
				  ],
				  xkey: 'device',
				  ykeys: ['geekbench'],
				  labels: ['수량'],
				  barRatio: 0.4,
				  barColors: ['#26B99A', '#34495E', '#ACADAC', '#3498DB'],
				  xLabelAngle: 15,
				  hideHover: 'auto',
				  resize: true
				});

			}	
			
			  //echart Bar
			  
			if ($('#mainb').length ){
			  
				var theme = 'minimal';
				
				  var echartBar = echarts.init(document.getElementById('mainb'), theme);

				  echartBar.setOption({
					title: {
					  text: '주문그래프',
					  subtext: '금년'
					},
					tooltip: {
					  trigger: 'axis'
					},
					legend: {
					  data: ['판매금액', '구매수량']
					},
					toolbox: {
					  show: false
					},
					calculable: false,
					xAxis: [{
					  type: 'category',
					  data: [<s:iterator value="listRate2" status="stat">'${datetime}월',</s:iterator>]
					}],
					yAxis: [{
					  type: 'value'
					}],
					series: [{
					  name: '판매금액',
					  type: 'bar',
					  data: [<s:iterator value="listRate2" status="stat">${order_price},</s:iterator>],
					  /*data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],*/
					  markPoint: {
						data: [{
						  type: 'max',
						  name: '최고치'
						}, {
						  type: 'min',
						  name: '최저치'
						}]
					  },
					  markLine: {
						data: [{
						  type: 'average',
						  name: '평균'
						}]
					  }
					}, {
					  name: '구매수량',
					  type: 'bar',
					  data: [<s:iterator value="listRate2" status="stat">${order_qty},</s:iterator>],
					  markPoint: {
						data: [{
						  name: '판매금액',
						  value: ${resultClass.order_price},
						  xAxis: 12,
						  yAxis: ${resultClass.order_price},
						}, {
						  name: '구매수량',
						  value: ${resultClass.order_qty},
						  xAxis: 12,
						  yAxis: ${resultClass.order_qty}
						}]
					  },
					  markLine: {
						data: [{
						  type: 'average',
						  name: '평균'
						}]
					  }
					}]
				  });

			}			
			
		};  	
  	
  	//HL
  	$(function() {
  		
  		init_morris_charts();  		
  		
	//공지사항 글쓰기
/*	$("#noticesend").click(function () {
		{
			location.href = "/icase/notice_list.action";
		}
	}); */
	$("#noticecancel").click(function () {
		{
			location.href = "/icase/notice_list.action";
		}
	});
	
	//공지사항 글 수정
	
/*	$("#noticemodisend").click(function () {
		{
			location.href = "/icase/notice_list.action";
		}
	}); */

	$("#noticemodicancel").click(function () {
		{
			location.href = "/icase/adnotice_list.action";
		}
	});
  			        		});     		

	//공지사항 상세보기
	function move_modify_form(no)
	{
		if(confirm("수정하시겠습니까?")) 	location.href = "/icase/adnotice_modifyform.action?no="+no;
	}	
  			
	function move_delete_form(no)
	{
		if(confirm("삭제하시겠습니까?")) 	location.href = "/icase/adnotice_delete.action?no="+no;
	}	
  			
	function move_qnadelete_form(no)
	{
		if(confirm("삭제하시겠습니까?")) 	location.href = "/icase/adqna_delete.action?no="+no;
	}
	
	//코멘트
 	function qna_com() {
		var form = document.comment; 
		
		if(form.com.value == ""){
			alert ("내용을 입력해주세요.");
			form.com.focus();
			return;
		}
		
		if(form.com.value != "")
		{
			if(confirm("재작성 하시겠습니까? 이전 내용은 삭제됩니다."))
			{
				form.action="/icase/qna_comment.action";
				form.submit();
				return;
			}
			else
			{
				form.com.focus();
				return;				
			}
		}	
		
	}  
  	//HL
  	
  	// 20171120 pjt 스크립트 추가
  	
  	$(function () {
  		
  		$("#refund_order_button").click(function () {
  			$('form[name=refund_order_form]').attr({action:'/icase/adminRefundPro.action', method:'post'}).submit();
  		});
  		
  		$("#back_order_button").click(function () {
  			$('form[name=back_order_form]').attr({action:'/icase/adminBackPro.action', method:'post'}).submit();
  		});  		
  		
  		$("#change_order_button").click(function () {
  			$('form[name=change_order_form]').attr({action:'/icase/adminChangePro.action', method:'post'}).submit();
  		});   		
  		
  	    $('#myDatepicker1').datetimepicker({
  	        format: 'YYYY-MM-DD'
  	    });
  	    $('#myDatepicker2').datetimepicker({
  	        format: 'YYYY-MM-DD'
  	    });  		
  		
  	})
  	
  	// end
  	
  	</script>    
    
    
    
    
  </body>
</html>