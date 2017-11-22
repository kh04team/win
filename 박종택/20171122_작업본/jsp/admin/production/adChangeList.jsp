<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %>  
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>교환관리</h3>
              </div>

              <div class="title_right">
	                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
	                <form id="change_list_search" name="change_list_search">
		                  <div class="input-group">
		                    <input type="text" id="searchKeyword" name="searchKeyword" class="form-control" value="<s:property value="searchKeyword" />" placeholder="Search for...">
		                    <span class="input-group-btn">
		                      <button class="btn btn-default" type="button" id="change_search_button">검색</button>
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
                    <h2>교환리스트</h2>
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

                    <!-- <div class="table-responsive"> -->
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th class="column-title">상품명 </th>
                            <th class="column-title">수량 </th>
                            <th class="column-title">상품가격 </th>
                            <th class="column-title">색상 </th>
                            <th class="column-title no-link last"><span class="nobr">교환상세</span>
                            </th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;"> ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
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
	                              <input type="checkbox" id="goods_no_list" name="goods_no_list" class="flat" value="<s:property value="no" />">
	                            </td>
	                            <td class=" "><s:property value="goods_name" /></td>
	                            <td class=" "><s:property value="order_qty" /> </td>
	                            <td class=" "><s:property value="order_price" /></td>
	                            <td class=" "><s:property value="goods_color" /></td>
	                            <td class=" last"><a href="/icase/adChangeView.action?no=<s:property value="no" />">보기</a>
	                            </td>
	                          </tr>
	                      </s:iterator>
	                      
						<s:if test="list.size() <= 0">
							<tr>
								<td colspan="8" align="center">등록된 게시물이 없습니다</td>
							</tr>
						</s:if>	                      
	                      
	                      <!-- 
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000039</td>
                            <td class=" ">May 23, 2014 11:30:12 PM</td>
                            <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                            </td>
                            <td class=" ">John Blank L</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$741.20</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000038</td>
                            <td class=" ">May 24, 2014 10:55:33 PM</td>
                            <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                            </td>
                            <td class=" ">Mike Smith</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$432.26</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000037</td>
                            <td class=" ">May 24, 2014 10:52:44 PM</td>
                            <td class=" ">121000204</td>
                            <td class=" ">Mike Smith</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$333.21</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">May 24, 2014 11:47:56 PM </td>
                            <td class=" ">121000210</td>
                            <td class=" ">John Blank L</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000039</td>
                            <td class=" ">May 26, 2014 11:30:12 PM</td>
                            <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                            </td>
                            <td class=" ">John Blank L</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$741.20</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000038</td>
                            <td class=" ">May 26, 2014 10:55:33 PM</td>
                            <td class=" ">121000203</td>
                            <td class=" ">Mike Smith</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$432.26</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000037</td>
                            <td class=" ">May 26, 2014 10:52:44 PM</td>
                            <td class=" ">121000204</td>
                            <td class=" ">Mike Smith</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$333.21</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>

                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000040</td>
                            <td class=" ">May 27, 2014 11:47:56 PM </td>
                            <td class=" ">121000210</td>
                            <td class=" ">John Blank L</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$7.45</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">121000039</td>
                            <td class=" ">May 28, 2014 11:30:12 PM</td>
                            <td class=" ">121000208</td>
                            <td class=" ">John Blank L</td>
                            <td class=" ">Paid</td>
                            <td class="a-right a-right ">$741.20</td>
                            <td class=" last"><a href="#">View</a>
                            </td>
                          </tr>
                           -->
                        </tbody>
                      </table>
                      <form id="product_process_form" name="product_process_form">
                      	<input type="hidden" id="product_selected_list" name="product_selected_list" />
                      </form>     
                      <!-- <div class="pull-right">
                      	<a href="javascript:product_list_del();" class="buttonNext btn btn-success">선택반품삭제</a>
						<button class="btn btn-primary" type="button" onclick="javascript:location.href='/icase/adGoodsWriteForm.action';">반품등록</button>                      
                      </div> -->
                      
                    <!-- </div> -->
                    
                    <s:property value="pagingHtml" escape="false" />
					<!-- 
					<div class="dataTables_paginate paging_simple_numbers" id="datatable-buttons_paginate">
						<ul class="pagination">
							<li class="paginate_button previous disabled" id="datatable-buttons_previous">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="0" tabindex="0">Previous</a>
							</li>
							<li class="paginate_button active">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="1" tabindex="0">1</a>
							</li>
							<li class="paginate_button ">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="2" tabindex="0">2</a>
							</li>
							<li class="paginate_button ">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="3" tabindex="0">3</a>
							</li>
							<li class="paginate_button ">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="4" tabindex="0">4</a>
							</li>
							<li class="paginate_button ">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="5" tabindex="0">5</a>
							</li>
							<li class="paginate_button ">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="6" tabindex="0">6</a>
							</li>
							<li class="paginate_button next" id="datatable-buttons_next">
								<a href="#" aria-controls="datatable-buttons" data-dt-idx="7" tabindex="0">Next</a>
							</li>
						</ul>
					</div>
					 -->
						
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
     