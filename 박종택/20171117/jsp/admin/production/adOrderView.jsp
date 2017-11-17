<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>

  
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
                    <form name="oderlistview" id="oderlistview" class="form-horizontal form-label-left input_mask" method="post">
				       <input type="hidden" id="no" name="no" value="<s:property value="resultClass.no" />" />
				       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	상품명<input type="text" id="goods_name" name="goods_name" value='<s:property value="resultClass.goods_name" />' class="form-control" readonly="readonly"  />
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	상품색깔<input type="text" id="goods_color" name="goods_color"  value='<s:property value="resultClass.goods_color" />' class="form-control" >
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-2 col-sm-5 col-xs-5">
                          	주문수량<input type="text" id="order_qty"  name="order_qty"  value='<s:property value="resultClass.order_qty" />' class="form-control" readonly="readonly" >
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	주문가격<input type="text" id="order_price" name="order_price"   value='<s:property value="resultClass.order_price" />' class="form-control" readonly="readonly" >
                        </div>
                      </div>
				       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                          	주문자이름<input type="text" id="mem_name" name="mem_name"  value='<s:property value="resultClass.mem_name" />' class="form-control" >
                        </div>
                      </div>
                     
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                       <input  type="text" id="sample4_postcode" name="zip_code"  readonly="readonly"  value='<s:property value="resultClass.zip_code" />'>
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ><br>
						<input type="text" id="sample4_roadAddress" name="address1" value='<s:property value="resultClass.address1" />' readonly="readonly">
						<input type="text" id="sample4_jibunAddress" name="address2"  value='<s:property value="resultClass.address2" />'>
						<span id="guide" style="color:#999"></span>
						</div>
						</div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          	배송 요청사항<input type="text" id="order_memo" name="order_memo"  value='<s:property value="resultClass.order_memo" />' class="form-control" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="order_status" id="order_status" class="form-control" >			    						    
                          <s:iterator value="list" status="stat">
                          	<option <s:if test="%{no == resultClass.order_status}"> selected </s:if> value="${order_text}" >${order_text}</option>
                          </s:iterator>
                          </select>
                        </div>
                      </div>
                    
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-8"></label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="status" id="status" class="form-control"  >
						   
						    <option value="y">주문</option>
						    <option value="n">주문취소</option>
						    
						  </select>
                        </div>
                      </div>				
                       
                             
                     
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                          
						  
                          <input type="button" id="order_modify" name="order_modify" class="btn btn-success" value="수정" >
                          <a href="/icase/admin/production/adOrderList.action" class="btn btn-success">확인</a>
                          
                        </div>
                      </div>

                    </form>
                  </div>
             

           