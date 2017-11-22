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
                <h3>��ǰ����</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>��ǰ������</h2>
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
                    <form id="demo-form2" name="back_order_form" data-parsley-validate class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
					  <input type="hidden" id="goods_no" name="goods_no" value="${resultClass.goods_no}" />
					  <input type="hidden" id="back_no" name="back_no" value="${resultClass.back_no}" />
					  <input type="hidden" id="no" name="no" value="${resultClass.no}" />
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">��ǰ�� 
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top:7px;">
                          <s:property value="resultClass.goods_name" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">����</label>
                        <div class="col-md-2 col-sm-6 col-xs-12" style="margin-top:7px;">
                          <s:property value="resultClass.order_qty" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">��ǰ����</label>
                        <div class="col-md-2 col-sm-6 col-xs-12" style="margin-top:7px;">
                          <s:property value="resultClass.order_price" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">�ɼǻ���</label>
                        <div class="col-md-2 col-sm-6 col-xs-12" style="margin-top:8px;">
                          <s:property value="resultClass.goods_color" />
                        </div>
                      </div>   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">��ǰ����</label>
                        <div class="col-md-2 col-sm-6 col-xs-12" style="margin-top:8px;">
                          <s:property value="resultClass.reason" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">������ �޸�</label>
                        <div class="col-md-2 col-sm-6 col-xs-12" style="margin-top:8px;">
                          <textarea id="admin_memo" name="admin_memo" cols="130" rows="5" ><s:property value="resultClass.admin_memo" /></textarea>
                        </div>
                      </div>     
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">��ǰ����</label>
                        <div class="col-md-2 col-sm-6 col-xs-12" style="margin-top:8px;">
                          <select id="order_status" name="order_status">
                          	<option value="��ǰ��û" <s:if test="%{resultClass.order_status == '��ǰ��û'}"> selected </s:if> >��ǰ��û</option>
                          	<option value="��ǰó����" <s:if test="%{resultClass.order_status == '��ǰó����'}"> selected </s:if> >��ǰ��û��</option>                          	
                          	<option value="��ǰ�Ϸ�" <s:if test="%{resultClass.order_status == '��ǰ�Ϸ�'}"> selected </s:if> >��ǰ�Ϸ�</option>  
                          	<option value="��ǰ����" <s:if test="%{resultClass.order_status == '��ǰ����'}"> selected </s:if> >��ǰ����</option>                          	                          	
                          </select>
                        </div>
                      </div>                                                                                           
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary" type="button" onclick="javascript:location.href='/icase/adBackList.action';">��ǰ����Ʈ��</button>
                          <button type="button" id="back_order_button" class="btn btn-success">��ǰ���¼���</button>
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