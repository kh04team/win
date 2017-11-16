<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

	<section class="bar background-white">
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">

            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>������ <small>�������� ������</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form action="adnotice_write.action" method="post" class="form-horizontal form-label-left" novalidate>
							
                      <p>��������<code>�������� �Խ�����</code>���� Ȯ�����ּ���.<a href="/icase/notice_list.action">Ŭ��</a>
                      <p>�������� �������� �ø��� Ŀ�� ���</p>

                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_admin">������ ���̵� <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type=text id="id_admin" name="id_admin" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div> 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="subject">����<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="subject" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="subject" placeholder="������ �Է����ּ���" required="required" type="text">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">����<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="content" rows="10" required="required" name="content" class="form-control col-md-7 col-xs-12"></textarea>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                     	  <button id="noticesend" type="submit" class="btn btn-success">���</button>
                          <button id="noticecancel" type="button" class="btn btn-primary">���</button>

 
                        </div>
                      </div>
                    </form>
 </section>

  