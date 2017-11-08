<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>공지사항 리스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>
             <div class="clearfix"></div>

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Notice<small>공지사항</small></h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                    <p>안녕하세요 <code>아이케이스 입니다</code></p>

                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th class="column-title">번호 </th>
                            <!-- <th class="column-title">말머리</th> -->
                            <th class="column-title">제목</th>
                            <th class="column-title">작성자</th>
                            <th class="column-title">작성일</th>
                            <!-- <th class="column-title">조회수</th> -->
                            <th class="bulk-actions" colspan="7">
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">                
                            <s:iterator value="list" status="stat">
                            <s:url id="viewURL" action="viewAction">
                            <s:param name="no">
                            <s:property value="no"/>
                            </s:param>
                            <s:param name="currentPage">
                            <s:property value="currentPage"/>
                            </s:param>
                            </s:url>
                            <s:property value="no"/>
							<s:property value="subject"/>
							<s:property value="id_damin"/>
							<s:property value="reg_date"/>
							</s:iterator>
							<s:if test="list.size()<=0">
							<td colspan="5">등록한 게시물이 없습니다.</td>
							</s:if>
							<tr align="center">
							<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
                          </tr>
                        </tbody>
                        <tr align="right">
                        <td colspan="5">
      
	<button id="write" type="button" class="btn btn-success">글쓰기</button>
		</td>
		</tr>
                      </table>
 
                   </div>
							
						
                  </div>
                </div>
              </div>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script type="text/javascript">

		$(function() {

	   		$("#write").click(function () {
	   			
				{
					location.href = "/shop/hyelim/adNoticeWriteForm.jsp";
				}

	   		});

		});
</script>
</html>