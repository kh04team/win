<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

    <div id="all">
         

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>내 주문내역</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>내 주문내역</li>
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

                    <div class="col-md-9" id="customer-orders">

                        
                        <div class="box">

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>주문번호</th>
                                            <th>상품이름</th>
                                            <th>구매수량</th>
                                            <th>결제금액</th>
                                            <th>주문상태</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <s:iterator value="list" status="stat"> 
                                        <tr>
                                           <%--  <td>
                                            <input type="hidden" id="no" name="no" value="<s:property value="no"/>">
                                            </td> --%>
                                            <td><s:property value="order_no"/></td>
                                            <td><s:property value="goods_name"/></td>
                                            <td><s:property value="order_qty"/></td>
                                            <td><s:property value="order_price"/></td>
                                            <td><span class="label label-info"><s:property value="order_status"/></span>
	                                            <s:if test="%{order_status == '결제완료'}">
	                                            	<div style="margin-top:5px;cursor:pointer;" onclick="javascript:orderStatusChange(<s:property value="no"/>);">주문취소</div>
	                                            </s:if>
	                                            <s:if test="%{order_status == '배송완료'}">
	                                            	<div style="margin-top:5px;cursor:pointer;" onclick="javascript:orderStatusBack(<s:property value="no"/>);">반품신청</div>
	                                            	<div style="cursor:pointer;" onclick="javascript:orderStatusRefund(<s:property value="no"/>);">환불신청</div>
	                                            	<div style="cursor:pointer;" onclick="javascript:orderStatusChange(<s:property value="no"/>);">교환신청</div>	                                            	                                            	
	                                            </s:if>
	                                            
                                            </td>
                                           	
                                            <td><a href="/icase/customer/orderlistview.action?no=<s:property value="no"/>" class="btn btn-template-main btn-sm">View</a></td>
                                            
                                        </tr>
                                      </s:iterator>
                                      
                                      <s:if test="list.size() <= 0">
											<tr>
												<td colspan="8" align="center">등록된 주문내역이 없습니다.</td>
											</tr>
									  </s:if>	           
                                       
                                       <%--  <tr>
                                            <th># 1735</th>
                                              <td>
                                                <a href="#">
                                                    <img src="/icase/customer/img/basketsquare.jpg" alt="Black Blouse Armani" width="50" height="50">
                                                </a>
                                            </td>
                                            <td>Black Blouse Armani
                                            </td>
                                            <td>1</td>
                                            <td>$ 150.00</td>
                                            <td><span class="label label-info">Being prepared</span>
                                            </td>
                                            <td><a href="customer-order.html" class="btn btn-template-main btn-sm">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th># 1735</th>
                                              <td>
                                                <a href="#">
                                                    <img src="/icase/customer/img/basketsquare.jpg" alt="Black Blouse Armani" width="50" height="50">
                                                </a>
                                            </td>
                                            <td>Black Blouse Armani
                                            </td>
                                            <td>1</td>
                                            <td>$ 150.00</td>
                                            <td><span class="label label-success">Received</span>
                                            </td>
                                            <td><a href="customer-order.html" class="btn btn-template-main btn-sm">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th># 1735</th>
                                              <td>
                                                <a href="#">
                                                    <img src="/icase/customer/img/basketsquare.jpg" alt="Black Blouse Armani" width="50" height="50">
                                                </a>
                                            </td>
                                            <td>Black Blouse Armani</a>
                                            </td>
                                            <td>1</td>
                                            <td>$ 150.00</td>
                                            <td><span class="label label-danger">Cancelled</span>
                                            </td>
                                            <td><a href="customer-order.html" class="btn btn-template-main btn-sm">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th># 1735</th>
                                              <td>
                                                <a href="#">
                                                    <img src="/icase/customer/img/basketsquare.jpg" alt="Black Blouse Armani" width="50" height="50">
                                                </a>
                                            </td>
                                            <td>Black Blouse Armani
                                            </td>
                                            <td>1</td>
                                            <td>$ 150.00</td>
                                            <td><span class="label label-warning">배송중</span>
                                            </td>
                                            <td><a href="customer-order.html" class="btn btn-template-main btn-sm">View</a>
                                            </td>
                                        </tr> --%>
                                    </tbody>
                                </table>
                            </div>
                            
                       

                    </div>
                    <!-- /.col-md-9 -->

                    <!-- *** LEFT COLUMN END *** -->

                    <!-- *** RIGHT COLUMN ***
			 _________________________________________________________ -->

                    <div class="col-md-3">
                    
                            </div>

                        </div>
                        <!-- /.col-md-3 -->

                        <!-- *** CUSTOMER MENU END *** -->
                    </div>

                    <!-- *** RIGHT COLUMN END *** -->

                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
		<%-- <div class="pages">	
			<s:property value="pagingHtml" escape="false" />
    	</div> --%>
      
