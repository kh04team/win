<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="id" value="#session.id"/>
	<section class="bar background-white">

       <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Q&A : �����̵� �������</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li><a href="/icase/qna_list.actionp">Q&A</a>
                            </li>
                            <li>Q&A �Է�</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">

            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="qna_write_content">

                    <form action="qna_write.action" method="post" class="form-horizontal form-label-left" >

                      <center><p>���� ��<code>FAQ �Խ�����</code>�ѷ����ּ���.<a href="/icase/faq_main.action">Ŭ��</a>
                      </center>
                      </p>
                       <%--  <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id">���̵� <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type=text id="id" name="id" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                        </div> 
                      </div> --%>
                      <input type=hidden name="id" value=%{id}>
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
                          <button id="qnasend" type="submit" class="btn btn-success" onclick="javascript:location.href='/icase/qna_list.action';">���</button>
                          <button id="qnacancel" type="button" class="btn btn-primary">���</button>

 
                        </div>
                      </div>
                    </form>
	</section>


