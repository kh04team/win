<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>상품등록</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>상품등록폼</h2>
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
                    <br />
                    <form id="demo-form2" name="product_regist_form" data-parsley-validate class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
					  <input type="hidden" id="goods_no" name="goods_no" value="${resultClass.goods_no}" />
					  <input type="hidden" id="write_status" name="write_status" value="<s:if test="%{resultClass.goods_no != ''}"> modify </s:if>">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">카테고리명
                        </label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <select id="category_no" name="category_no" required="required" class="form-control col-md-7 col-xs-12">
                          	<option value="">=상품카테고리를 선택해주세요=</option>
                          	<s:iterator value="list" status="stat">
	                          	<option <s:if test="%{category_no == resultClass.category_no}"> selected </s:if> value="<s:property value='category_no' />"><s:property value="category_name" /></option>
                          	</s:iterator>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">상품명 
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="goods_name" name="goods_name" required="required" value="<s:property value="resultClass.goods_name" />" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">수량</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="goods_qty" name="goods_qty" value="<s:property value="resultClass.goods_qty" />" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">상품가격</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="goods_price" name="goods_price" value="<s:property value="resultClass.goods_price" />" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">옵션색깔</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="goods_color" name="goods_color" value="<s:property value="resultClass.goods_color" />" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">메인이미지</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <s:file id="upload" name="upload" theme="simple"/>

							<s:url id="download" action="fileDownloadAction">
								<s:param name="goods_no">
									<s:property value="goods_no" />
								</s:param>
							</s:url>
							
							<s:a href="%{download}">
								<s:property value="resultClass.main_img_org" />
							</s:a>                          
                          
                          <!-- <input id="upload" name="upload" class="form-control col-md-7 col-xs-12" type="file" name="middle-name"> -->
                        </div>
                      </div>   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">상세이미지</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
	                      <s:file id="upload2" name="upload2" theme="simple"/>
	                      
							<s:url id="download2" action="fileDownloadAction2">
								<s:param name="goods_no">
									<s:property value="goods_no" />
								</s:param>
							</s:url>
							
							<s:a href="%{download2}">
								<s:property value="resultClass.detail_img_org" />
							</s:a>    	                      
	                      
                          <!-- <input id="upload2" name="upload2" class="form-control col-md-7 col-xs-12" type="file" name="middle-name"> -->
                        </div>
                      </div>                                          
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary" type="button" onclick="javascript:location.href='/icase/adGoodsList.action';">상품리스트로</button>
						  <button class="btn btn-primary" type="reset">입력내용삭제</button>
                          <button type="button" id="product_regist_button" class="btn btn-success"><s:if test="%{resultClass.goods_no != ''}">상품수정</s:if><s:else>상품등록</s:else></button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- /page content -->