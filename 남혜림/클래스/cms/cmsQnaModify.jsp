<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

	<section class="bar background-white">

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Q&A : 무엇이든 물어보세요</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li><a href="/icase/qna_list.action">Q&A</a>
                            </li>
                            <li>Q&A 수정</li>
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

                  <div class="x_content">

                  <form action="qna_modify.action" method="post" class="form-horizontal form-label-left" novalidate>

                      <center><p>질문 전<code>FAQ 게시판을</code>둘러봐주세요.<a href="/icase/faq_main.action">클릭</a>
                      </center>
                      </p>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id">작성자ID <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="id" id="id" name="id" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="subject">제목 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="subject" name="subject" placeholder="제목을 입력하세요" required="required" type="text" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">문의사항 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="content" rows="10" required="required" name="content" class="form-control col-md-7 col-xs-12"></textarea>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button id="qnamodisend" type="submit" class="btn btn-primary">수정완료</button>
                          <button id="qnalist" type="button" class="btn btn-success">목록</button>
 
                        </div>
                      </div>
                    </form>
 	</section>