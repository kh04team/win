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
                <h3>��ǰī�װ� ����</h3>                
              </div>
            </div>    
            <br/><br/><br/>

            
            
             <div class="container" style="float:left;">
		      <div class="row">
		        <div class="col-sm-4">
		          <h2>ī�װ� ����Ʈ</h2>
		          <div id="treeview1" class=""></div>
		        </div>
		      </div>
		     </div>  
		     
		     
            <div class="clearfix"></div>

            <div class="row">
              <!-- form input mask -->
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2 id="category_status_txt" style="padding:10px;">ī�װ� �Է�</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="category_form" class="form-horizontal form-label-left">
					  <input type="hidden" id="write_type" name="write_type" value="write" />
					  <input type="hidden" id="category_no" name="category_no"  />					  
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">ī�װ� �̸�</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" id="category_name" name="category_name" class="form-control" data-inputmask="'mask': '99/99/9999'">                          
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">ī�װ� ����</label>
                        <div class="col-md-2 col-sm-9 col-xs-9">
                          <select id="status" name="status" class="form-control">
                          	<option value="y">����</option>
                          	<option value="n">�����</option>                          	
                          </select>
                        </div>
                      </div>

                      <div class="ln_solid"></div>

                      <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                          <button type="button" id="category_control" class="btn btn-success">�Է�</button>
                          <button type="button" id="category_modify" class="btn btn-success">����</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
              <!-- /form input mask -->    
          </div>

        </div>

        <!-- /page content -->	
     