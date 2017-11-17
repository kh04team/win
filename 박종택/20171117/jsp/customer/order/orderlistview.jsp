<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  
    <title>Gentelella Alela! | </title>

  </head>
<body>

   
        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>주문상세보기</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>주문상세보기</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

      

                    <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                   
                  <div class="x_title">
                    
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form class="form-horizontal form-label-left input_mask" id="orderlistvieww" name="orderlistvieww" method="post">
				       <input type="hidden" id="no" name="no" value="<s:property value="resultClass.no" />" />
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	상품명<input type="text" class="form-control" id="goods_name" name="goods_name"  value='<s:property value="resultClass.goods_name" />' readonly="readonly" >
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	상품색깔<input type="text" class="form-control" id="goods_color" name="goods_color" value='<s:property value="resultClass.goods_color" />' readonly="readonly" >
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-2 col-sm-5 col-xs-5">
                          	주문수량<input type="text" class="form-control" id="order_qty" name="order_qty" value='<s:property value="resultClass.order_qty" />' readonly="readonly" >
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	주문가격<input type="text" class="form-control" id="order_price" name="order_price" value='<s:property value="resultClass.order_qty" />' readonly="readonly" >
                        </div>
                      </div>
				     
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-5 col-sm-9 col-xs-12">
                       	배송지주소 <!-- <span style="padding-left:110px;"></span> --><br>
                       
                        <input  type="text" id="sample4_postcode" name="sample4_postcode" class="form-control" value='<s:property value="resultClass.zip_code" />'  readonly="readonly" >
			            <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" class="form-control" value='<s:property value="resultClass.address1" />'  readonly="readonly"> 
						 <input type="text" id="sample4_jibunAddress" class="form-control"  value='<s:property value="resultClass.address2" />'  readonly="readonly"> 
						<span id="guide" style="color:#999"></span>
						</div>
						</div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-9 col-xs-12">
                          	배송 요청사항<input type="text" class="form-control" id="order_memo" name="order_memo"  value='<s:property value="resultClass.order_memo" />'   readonly="readonly">
                        </div>
                      </div>	
                       
                             
                     
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                        <a href="/icase/customer/order/orderlist.action" class="btn btn-success">확인</a>
                         
                        </div>
                      </div>

                    </form>
                  </div>
             

               

    <!-- jQuery -->
    <script src="/icase/admin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/icase/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/icase/admin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/icase/admin/vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="/icase/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/icase/admin/vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/icase/admin/vendors/moment/min/moment.min.js"></script>
    <script src="/icase/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="/icase/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="/icase/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="/icase/admin/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="/icase/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="/icase/admin/vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="/icase/admin/vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="/icase/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="/icase/admin/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="/icase/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="/icase/admin/vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="/icase/admin/build/js/custom.min.js"></script>
	
  </body>
</html>