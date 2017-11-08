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

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">카테고리명
                        </label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <select id="category_no" name="category_no" required="required" class="form-control col-md-7 col-xs-12">
                          	<option value="">=상품카테고리를 선택해주세요=</option>
                          	<s:iterator value="list" status="stat">
	                          	<option value="<s:property value='category_no' />"><s:property value="category_name" /></option>
                          	</s:iterator>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">상품명 
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="goods_name" name="goods_name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">수량</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="goods_qty" name="goods_qty" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">상품가격</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="goods_price" name="goods_price" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">옵션색깔</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="goods_color" name="goods_color" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">메인이미지</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="main_img_save" name="main_img_save" class="form-control col-md-7 col-xs-12" type="file" name="middle-name">
                        </div>
                      </div>   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">상세이미지</label>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <input id="detail_img_org" name="detail_img_org" class="form-control col-md-7 col-xs-12" type="file" name="middle-name">
                        </div>
                      </div>                                          
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary" type="button">뒤로가기</button>
						  <button class="btn btn-primary" type="reset">입력내용삭제</button>
                          <button type="button" id="product_regist_button" class="btn btn-success">상품등록</button>
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