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



        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>주문자정보 <small>관리자전용</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <form id="adorderlist_search" name="adorderlist_search">
		                  <div class="input-group">
		                    <input type="text" id="searchorder" name="searchorder" class="form-control" value="<s:property value="searchorder" />" placeholder="Search for...">
		                    <span class="input-group-btn">
		                      <button class="btn btn-default" type="button" id="adorder_search">검색</button>
		                    </span>
		                  </div>
		            </form>      
                </div>
              </div>
            </div>

          
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>주문리스트</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                  
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th class="column-title">주문번호 </th>
                            <th class="column-title">주문자이름 </th>
                            <th class="column-title">주문상태</th>
                            <th class="column-title">결제정보 </th>
                            <th class="column-title">결제금액 </th>
                            <th class="column-title no-link last"><span class="nobr">상세보기</span>
                            </th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                         
                              
                          <s:iterator value="list" status="stat">   
                        	  <s:if test="#stat.even == true">
	                          	<tr class="even pointer">
	                          </s:if>	                          	
	                          <s:else>
	                          	<tr class="odd pointer">
	                          </s:else>
	                         
	                            <td class="a-center ">
	                              <input type="checkbox" class="flat" name="no" value="<s:property value="no"/>">
	                            </td>
	                            
	                            <td class=" " ><s:property value="order_no"/></td>
	                            <td class=" "><s:property value="mem_name"/></td>
	                            <td class=" "><s:property value="order_status"/></td>
	                            <td class=" "><s:property value="settle_type"/></td>
	                            <td class=" "><s:property value="order_price"/></td>	                           
	                            <td class=" last"><a href="/icase/admin/production/adOrderView.action?no=<s:property value="no"/>">View</a></td>
	                           </tr>
                          </s:iterator> 
                          
						<s:if test="list.size() <= 0">
							<tr>
								<td colspan="8" align="center">등록된 주문내역이 없습니다</td>
							</tr>
						</s:if>	                              
                          <!-- 
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                            
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                           
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                           
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                            
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                            
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                            
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                            
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>

                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                           
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                           <td class=" ">121000040</td>
                            <td class=" ">John Blank L</td>
                           
                            <td class=" ">무통장입금</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                           -->
                        </tbody>
                        
                      </table>
                      
                   
                      
                        <div class="pull-right">
  							
						<form id="form_ex" name="form_ex" method="post" >
				          
				            <input type="hidden" id="searchorder" name="searchorder" value="<s:property value="searchorder"/>">
					    </form>
                   
                           <a href="javascript:submitForm();">엑셀다운로드</a>
                           <br/><s:property value="pagingHtml" escape="false" />	                      
                      </div>   							
                  </div>
                </div>
              </div>
            </div>
         
        
        <!-- /page content -->

        <!-- footer content -->
        
        <!-- /footer content -->
      </div>
    </div>

