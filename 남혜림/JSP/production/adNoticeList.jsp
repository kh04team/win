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
                        <h1>��������</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>��������</li>
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
						<h2>
							Notice<small>��������</small>
						</h2>
						<div class="clearfix"></div>
					</div>

					<div class="x_content">

						<p>
							�ȳ��ϼ���
							<code>�������̽� �Դϴ�</code>
						</p>

						<div class="table-responsive">
							<table class="table table-striped jambo_table bulk_action">
								<thead>
									<tr class="headings">
		<th class="column-title">��ȣ</th>
			<!-- <th class="column-title">���Ӹ�</th> -->
			<th class="column-title">����</th>
					<th class="column-title">�ۼ���</th>
							<th class="column-title">�ۼ���</th>
					<!-- <th class="column-title">��ȸ��</th> -->
						<th class="bulk-actions" colspan="7"></th>
					</tr>
								</thead>

<!-- 								<tbody>
									<tr class="even pointer"> -->
										<s:iterator value="list" status="y">
										
				<s:url id="viewURL" action="adnotice_view">
					<s:param name="no">
					<s:property value="no" />
						</s:param>
						<s:param name="currentPage">
						<s:property value="currentPage" />
					</s:param>
					</s:url>
					<tr bgcolor="#ffffff">
				<td><s:property value="no" /></td>
				<td align="left"><s:a href="%{viewURL}">
					<s:property value="subject" />
					</s:a></td>
					<td><s:property value="id_admin" /></td>
		<td><s:property value="reg_date" /></td>
					</s:iterator>
				<s:if test="list.size()<=0">
			<tr bgcolor="#fffff" align="center">
					<td colspan="5">����� �Խù��� �����ϴ�.</td>
						</tr>
				</s:if>
		<tr align="center">
			<td colspan="5"><s:property value="pagingHtml"
					escape="false" /></td>
									</tr>
								</tbody>
								<tr align="right">
									<td colspan="5">
		<%-- <s:if test ="#session.mem_grade =='admin'">  --%>
		<button id="noticewrite" type="button" class="btn btn-success"onclick="javascript:location.href='/icase/adnotice_writeform.action';">�۾���</button>
		<%-- </s:if> --%> 			
			</td>
								</tr>
							</table>
                            </div>
	</div>
	</section>
</div>
</div>