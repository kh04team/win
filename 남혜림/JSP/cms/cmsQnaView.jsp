<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

	<section class="bar background-white">



        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Q&A �󼼺���</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li><a href="cmsQnaList.jsp">Q&A</a>
                            </li>
                            <li>Q&A �󼼺���</li>
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

                        <p class="lead">�����Ͻ� ������ <strong>���ϰ�</strong>�����帳�ϴ�. 
                        <br><strong>���� ������ �ٽ� �� �� Ȯ�����ּ���.</strong></p>
                        <p class="lead text-muted">�ٸ� �亯�� ����� ������� �޸��ſ���Ф� 
                        <br><a href="fAq.jsp">FAQ</a>�� �ٽ� �� �� �ѷ�������. 
                        	����ڰ� ������ �ɰ� �ۼ��� �����Դϴ�.</p>

                        <div class="box">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>			
      <tr>
      <tr>
        <td bgcolor="#F4F4F4">  ��ȣ </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.no" />
        </td>
      </tr>
      <tr>
        <td width="100" bgcolor="#F4F4F4">  ����</td>
        <td width="500" bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.subject" />
        </td>
      </tr>
           <tr>
        <td bgcolor="#F4F4F4">  �۾��� </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.id" />
        </td>
                    <tr>
        <td bgcolor="#F4F4F4">  ��ϳ�¥ </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.reg_date" />
        </td>
      </tr>
        </tr>
           <tr>
        <td bgcolor="#F4F4F4">  ���� </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.content" />
        </td>
      </tr>


                                    </thead>
                                                           <tr align="right">
                       <td colspan="5">
      
  <button id="qnamodify" type="button" class="btn btn-primary" onclick="javascript:move_qnamodify_form(${no});">����</button>
  <button id="qnadelete" type="button" class="btn btn-success" onclick="javascript:move_qnadelete_form(${no});">����</button>
  <button id="qnalist" type="button" class="btn btn-primary" onclick="javascript:location.href='/icase/qna_list.action';">���</button>
		</td>
		</tr>
                                </table>
                               <tr>
<td>

<%-- <form id="comment" name="comment" method="post">
<input type="hidden" name="no" value="${no}"/>
<div id="contact" class="container-fluid bg-grey">
  <class="text-center">��� �ۼ�</class>

  <div class="row">
    <div class="col-sm-10 slideanim">
    <s:hidden name="no" value="%{resultClass.no}"/>
  <s:hidden name="id_admin" value="%{resultClass.id_admin}"/> <!-- ���� -->
      <div class="row">
            <textarea class="form-control" id="commentParentText" name="com" placeholder="����� �ۼ����ּ���." rows="5"></textarea>
      </div>
      <br>
<!--         <div class="col-sm-6 form-group">
          <input class="form-control" id="commentParentName" name="commentParentName" placeholder="�̸�" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="commentParentPassword" name="commentParentPassword" placeholder="��й�ȣ" type="password" required>
        </div>
      </div> -->
      
          <button id="comment" type="button" class="btn btn-default pull-right"  onclick="javascript:qna_com();">��� �ޱ�</button>
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
				��ϵ� ���� �����ϴ�.
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