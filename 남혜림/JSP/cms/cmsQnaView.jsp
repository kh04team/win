<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

	<section class="bar background-white">



        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Q&A 상세보기</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li><a href="cmsQnaList.jsp">Q&A</a>
                            </li>
                            <li>Q&A 상세보기</li>
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

                        <p class="lead">질문하신 내용을 <strong>상세하게</strong>보여드립니다. 
                        <br><strong>질문 사항을 다시 한 번 확인해주세요.</strong></p>
                        <p class="lead text-muted">다만 답변은 담당자 마음대로 달릴거에요ㅠㅠ 
                        <br><a href="fAq.jsp">FAQ</a>를 다시 한 번 둘러보세요. 
                        	담당자가 연봉을 걸고 작성한 내용입니다.</p>

                        <div class="box">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>			
      <tr>
      <tr>
        <td bgcolor="#F4F4F4">  번호 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.no" />
        </td>
      </tr>
      <tr>
        <td width="100" bgcolor="#F4F4F4">  제목</td>
        <td width="500" bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.subject" />
        </td>
      </tr>
           <tr>
        <td bgcolor="#F4F4F4">  글쓴이 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.id" />
        </td>
                    <tr>
        <td bgcolor="#F4F4F4">  등록날짜 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.reg_date" />
        </td>
      </tr>
        </tr>
           <tr>
        <td bgcolor="#F4F4F4">  내용 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.content" />
        </td>
      </tr>


                                    </thead>
                                                           <tr align="right">
                       <td colspan="5">
      
  <button id="qnamodify" type="button" class="btn btn-primary" onclick="javascript:move_qnamodify_form(${no});">수정</button>
  <button id="qnadelete" type="button" class="btn btn-success" onclick="javascript:move_qnadelete_form(${no});">삭제</button>
  <button id="qnalist" type="button" class="btn btn-primary" onclick="javascript:location.href='/icase/qna_list.action';">목록</button>
		</td>
		</tr>
                                </table>
                               <tr>
<td>

<%-- <form id="comment" name="comment" method="post">
<input type="hidden" name="no" value="${no}"/>
<div id="contact" class="container-fluid bg-grey">
  <class="text-center">댓글 작성</class>

  <div class="row">
    <div class="col-sm-10 slideanim">
    <s:hidden name="no" value="%{resultClass.no}"/>
  <s:hidden name="id_admin" value="%{resultClass.id_admin}"/> <!-- 세션 -->
      <div class="row">
            <textarea class="form-control" id="commentParentText" name="com" placeholder="댓글을 작성해주세요." rows="5"></textarea>
      </div>
      <br>
<!--         <div class="col-sm-6 form-group">
          <input class="form-control" id="commentParentName" name="commentParentName" placeholder="이름" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="commentParentPassword" name="commentParentPassword" placeholder="비밀번호" type="password" required>
        </div>
      </div> -->
      
          <button id="comment" type="button" class="btn btn-default pull-right"  onclick="javascript:qna_com();">댓글 달기</button>
 --%>
 		<tr>
 			<td colspan="2" height="10">
				<s:property value="commentlist.com"/>
				<strong><s:property value="commentlist.com_reg_date"/></strong>
 			</td>
 		</tr>


 				<s:if test="commentlist.size()<=0">
 		<tr>
 			<td colspan="2" height="10">
				등록된 글이 없습니다.
 			</td>
 		</tr>
				</s:if>
        </div>
      </div>	
    </div>
  </div>
</div>                
  </form>

                            </div>
	</div>
	</section>