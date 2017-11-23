<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

    <div id="all">
         

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>쪽지함</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>쪽지내역</li>
                           
                        </ul>

                    </div>
                    
                </div>
            </div>
        </div>
<!--  <a href="/icase/customer/order/orderlist.action" class="btn btn-success">확인</a> -->
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
                                           
                                            <th>보낸사람</th>
                                            <th>제목</th>
                                            <th>보낸날짜</th>
                                            <th>내용보기</th>
                                            <th>쪽지삭제</th>
                                          
                                           
                                          
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <s:if test="list.size() <= 0">
											<tr>
												<td colspan="8" align="center">받은 쪽지가 없습니다.</td>
												<!-- <td align="center" ><a href="/icase/user/memowriteform.action"  class="btn btn-template-main btn-sm" style="text-align:center;">쪽지보내기</a></td> -->
											</tr>
									  </s:if>	
                                    
                                    
                                      <s:iterator value="list" status="stat"> 
                                        <tr>
                                            <%-- <td>
                                            <input type="hidden" id="no" name="no" value="<s:property value="no"/>">
                                            </td> --%>
                                            
                                            <td><s:property value="send_id"/></td>
                                            <td><s:property value="subject"/></td>
                                            <td><s:property value="regdate"/></td>
                                            <td><a href="/icase/user/memolistview.action?no=<s:property value="no"/>" class="btn btn-template-main btn-sm">view</a></td>
                                            <td><a href="javascript:delete_memo(${no});"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                           <%--  <td><a href="/icase/user/memowriteform.action?recive_id=<s:property value="recive_id"/>" class="btn btn-template-main btn-sm">답장보내기</a></td> --%>
                                        </tr>
                                      </s:iterator>
                                      
                                    </tbody>
                                       <s:if test="#session.mem_grade == 'admin'">
                                         <td colspan="8" align="center"><a href="/icase/user/memowriteform.action" class="btn btn-template-main btn-sm">쪽지보내기</a></td>
                        			   </s:if>	 
                                </table>
                               
                            </div>
                             <%--   <s:iterator value="list" status="stat"> 
                                      <td><a href="/icase/user/memowriteform.action?recive_id=<s:property value="recive_id"/>" class="btn btn-template-main btn-sm">쪽지보내기</a></td>
                        		</s:iterator>  --%>
                         
                    </div>
                     
                    
                    <!-- /.col-md-9 -->

                    <!-- *** LEFT COLUMN END *** -->

                    <!-- *** RIGHT COLUMN ***
			 _________________________________________________________ -->
			  
                    
                            </div>

                        </div>
                        <!-- /.col-md-3 -->

                        <!-- *** CUSTOMER MENU END *** -->
                    </div>

                    <!-- *** RIGHT COLUMN END *** -->

                </div>
                    

                    <div class="col-md-3">

            </div>
            
            <!-- /.container -->
        </div>
        
        <!-- /#content -->
		<%-- <div class="pages">	
			<s:property value="pagingHtml" escape="false" />
    	</div> --%>
      