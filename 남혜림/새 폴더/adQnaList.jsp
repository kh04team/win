<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="right_col" role="main">
<div class="">
	<section class="bar background-white">



        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Q&A</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>Q&A</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">
             <div class="clearfix"></div>

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Q&A게시판<small>질문</small></h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                    <p>안녕하세요 <code>아이케이스 입니다</code></p>
					<P>질문을 해주시면 답변을 해드립니다.</P>
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th class="column-title">번호 </th>
                            <!-- <th class="column-title">말머리</th> -->
                            <th class="column-title">제목</th>
                            <th class="column-title">ID</th>
                            <th class="column-title">작성일</th>
                            <!-- <th class="column-title">조회수</th> -->
                            <th class="column-title">답변일</th>
                            <th class="bulk-actions" colspan="7">
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">                
                            <s:iterator value="list" status="stat">
                            <s:url id="viewURL" action="adqna_view">
                            <s:param name="no">
                            <s:property value="no"/>
                            </s:param>
                            <s:param name="currentPage">
                            <s:property value="currentPage"/>
                            </s:param>
                            </s:url>
                            <tr bgcolor="#ffffff">
                            <td><s:property value="no"/></td>
                            <td align="left"><s:a href="%{viewURL}">
							<s:property value="subject"/></s:a></td>
							<td><s:property value="id"/></td>
							<td><s:property value="reg_date"/></td>
							<td><s:property value="com_reg_date" default="미답변"/></td>
							</s:iterator>
							<s:if test="list.size()<=0">
							<tr bgcolor="#fffff" align="center">
							<td colspan="5">등록한 게시물이 없습니다.
							</s:if>
							<tr align="center">
							<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
                          </tr>
                        </tbody>
                        <tr align="right">
                        <td colspan="5">
     
	<button id="qnawrite" type="button" class="btn btn-success" onclick="javascript:location.href='/icase/qna_writeform.action';">글쓰기</button>
	
		</td>
		</tr>
                      </table>
 
                   </div>
                   	</div>
	</section>
</div>
</div>