<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="right_col" role="main">
<div class="">

	<section class="bar background-white">



        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>공지사항 상세보기</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li><a href="/icase/adnotice_list.action">공지사항</a>
                            </li>
                            <li>공지사항 상세보기</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">

                    <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                    <div class="col-md-9 clearfix" id="customer-order">

                        <p class="lead"><strong>공지사항</strong>입니다. 
                        <br><strong>공지방에서 사담 자제요</strong></p>

                        <!-- <div class="box"> -->
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>			
      <tr>
      <tr>
        <td bgcolor="#F4F4F4">  번호 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="query.no" />
        </td>
      </tr>
      <tr>
        <td width="100" bgcolor="#F4F4F4">  제목</td>
        <td width="500" bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="query.subject" />
        </td>
      </tr>
           <tr>
        <td bgcolor="#F4F4F4"> 관리자 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="query.id_admin" />
        </td>
                    <tr>
        <td bgcolor="#F4F4F4">  등록날짜 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="query.reg_date" />
        </td>
      </tr>
        </tr>
           <tr>
        <td bgcolor="#F4F4F4">  내용 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="query.content" />
        </td>
      </tr>			
                                  
                    
   </thead>
                   <tr align="right">
                       <td colspan="5">
                       
<!--     <s:url id="modifyURL" action="adnotice_modifyform.action">
    	<s:param name="no">
    		<s:property value="no"/>
    	</s:param>
    </s:url>
    
    <s:url id="deleteURL" action="adnotice_delete.action">
    <s:param name="no">
    	<s:property value="no"/>
    </s:param>
    </s:url> -->
  
  <button id="noticemodify" type="button" class="btn btn-primary" onclick="javascript:move_modify_form(${no});">수정</button>
  <button id="noticedelete" type="button" class="btn btn-success" onclick="javascript:move_delete_form(${no});">삭제</button>
  <button id="noticelist" type="button" class="btn btn-primary"onclick="javascript:location.href='/icase/adnotice_list.action';">목록</button>
  
		</td>
		</tr>
                                </table>
                                
 
                            <!-- </div> -->
	</div>
	</section>
</div>
</div>