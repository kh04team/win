<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

    <div id="all">
         

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>�� �ֹ�����</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>�� �ֹ�����</li>
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
                                            <th>�ֹ���ȣ</th>
                                            <th>��ǰ�̸�</th>
                                            <th>���ż���</th>
                                            <th>�����ݾ�</th>
                                            <th>�ֹ�����</th>
                                            <th>�󼼺���</th>
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
	                                            <s:if test="%{order_status == '�����Ϸ�'}">
	                                            	<div style="margin-top:5px;cursor:pointer;" onclick="javascript:orderStatusChange(<s:property value="no"/>);">�ֹ����</div>
	                                            </s:if>
	                                            <s:if test="%{order_status == '��ۿϷ�'}">
	                                            	<div style="margin-top:5px;cursor:pointer;" onclick="javascript:orderStatusBack(<s:property value="no"/>);">��ǰ��û</div>
	                                            	<div style="cursor:pointer;" onclick="javascript:orderStatusRefund(<s:property value="no"/>);">ȯ�ҽ�û</div>
	                                            	<div style="cursor:pointer;" onclick="javascript:orderStatusChange(<s:property value="no"/>);">��ȯ��û</div>	                                            	                                            	
	                                            </s:if>
	                                            
                                            </td>
                                           	
                                            <td><a href="/icase/customer/orderlistview.action?no=<s:property value="no"/>" class="btn btn-template-main btn-sm">View</a></td>
                                            
                                        </tr>
                                      </s:iterator>
                                      
                                      <s:if test="list.size() <= 0">
											<tr>
												<td colspan="8" align="center">��ϵ� �ֹ������� �����ϴ�.</td>
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
                                            <td><span class="label label-warning">�����</span>
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
      
