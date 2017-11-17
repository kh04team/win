<%@ page import="java.util.*, java.text.*"  %>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
 String today = formatter.format(new java.util.Date());
%>
<%

response.setHeader("Content-Disposition","attachment;filename=orderlist_"+today+".xls");
response.setHeader("Content-Description", "JSP Generated Data");
%>

<%@ page language="java" contentType="application/vnd.ms-excel; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

  </head>



        <!-- page content -->
        <div class="right_col" role="main">
          
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  
                  <div class="x_content">

                  
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">

                            <th class="column-title">주문번호 </th>
                            <th class="column-title">주문자이름 </th>
                            <th class="column-title">주문상태</th>
                            <th class="column-title">결제정보 </th>
                            <th class="column-title">결제금액 </th>
                            
                            </th>
                           
                          </tr>
                        </thead>

                        <tbody>
                         
                              
                          <s:iterator value="list" status="stat">   
	                          	<tr >
                      	                            
		                            <td class=" " ><s:property value="order_no"/></td>
		                            <td class=" "><s:property value="mem_name"/></td>
		                            <td class=" "><s:property value="order_status"/></td>
		                            <td class=" "><s:property value="settle_type"/></td>
		                            <td class=" "><s:property value="order_price"/></td>	                           
	                            
	                           </tr>
                          </s:iterator> 
                          
						<s:if test="list.size() <= 0">
							<tr>
								<td colspan="8" align="center">등록된 주문내역이 없습니다</td>
							</tr>
						</s:if>	                              
                          
                        </tbody>
                        
                      </table>
                      
                   
                      
                      
                           
                           
                  </div>
                </div>
              </div>
            </div>
         
        
        <!-- /page content -->

        <!-- footer content -->
        
        <!-- /footer content -->
      </div>
    </div>

