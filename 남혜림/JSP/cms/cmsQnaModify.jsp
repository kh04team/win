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
                    <center><h2>Q&A����<small>Q&A ����������</small></h2></center>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form action="qna_modify.action" method="post" class="form-horizontal form-label-left" >
								<s:hidden name="no" value="%{resultClass.no}"/>
								<s:hidden name="currentPage" value="%{currentPage}"/>
                    <!-- <system.out.println("resultClass.id_admin")> -->
                      <center><p>�����ϱ�����<code>FAQ�Խ����� </code>���� Ȯ�����ּ���.<a href="/icase/faq_main.action">Ŭ��</a></center>
                      </p>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_admin">������ ���̵� <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="id" id="id" name="id" value="<s:property value='resultClass.id' />" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                     
					  </div>
                      </div>
                      	
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="subject">����<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="subject" name="subject" value="<s:property value='resultClass.subject' />" placeholder="�����̽�" required="required" type="text" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">���� ���� <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="textarea" name="content" rows="10" required="required"  class="form-control col-md-7 col-xs-12"><s:property value='resultClass.content' /></textarea>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button id="noticemodisend" type="submit" class="btn btn-success">����</button>
                          <button id="noticemodicancel" type="button" class="btn btn-primary" onclick="javascript:location.href='/icase/qna_list.action';">���</button>

 
                        </div>
                      </div>
                    </form>
 	</section>
